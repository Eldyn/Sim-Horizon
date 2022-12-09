import { system, world, ItemStack, ItemType, MinecraftItemTypes, Items } from "@minecraft/server";
import { ModalFormData, MessageFormData, ActionFormData } from "@minecraft/server-ui";
import * as Aux from "../functions/auxiliary_functions";
import { EnchantList, NamePool } from "../data/mine_data";

async function randomEnchant(player) {
    //? Because we cannot create locked items with gametest, we create one using replaceitem, we will then clone it and modify it, later removing this one.
    let enchantNumber = 0;
    await player.runCommandAsync(`replaceitem entity ${player.name} slot.inventory 0 cr:pickaxe0 1 0 {"item_lock":{"mode":"lock_in_slot"},"can_destroy":{"blocks":["cr:l1","cr:l2","cr:l3","cr:l4","cr:l5","cr:luckyhblock","cr:mine_l1_com1","cr:mine_l1_com2","cr:mine_l1_rare","cr:mine_l2_com1","cr:mine_l2_com2","cr:mine_l2_rare","cr:mine_l3_com1","cr:mine_l3_com2","cr:mine_l3_rare","cr:mine_l4_com1","cr:mine_l4_com2","cr:mine_l4_rare","cr:mattoni","cr:oro","cr:roccia"]}}`);
    let inventory = player.getComponent('inventory').container;
    let item = inventory.getItem(9);
    await player.runCommandAsync(`clear ${player.name} cr:pickaxe0`);

    function roll() {
        // Calculate the total weight of all the EnchantList
        let totalWeight = 0;
        for (const enchant of EnchantList) {
            totalWeight += enchant.weight;
        }

        // Generate a random number between 0 and the total weight
        const random = Math.random() * totalWeight;

        // Keep track of the cumulative weight as we iterate over the EnchantList
        let cumulativeWeight = 0;
        for (const enchant of EnchantList) {
            cumulativeWeight += enchant.weight;
            // If the cumulative weight exceeds the random number, return the current Enchant
            if (cumulativeWeight >= random) {
                return enchant;
            }
        }
    };
    function randomEnchantNumber(n) {
        // create an array of weights for each number
        const weights = [];
        for (let i = 1; i <= n; i++) {
            // calculate the weight for each number using 100 - i * 10
            weights.push(Math.ceil(n - i + 1));
        }

        // calculate the total weight
        const totalWeight = weights.reduce((total, weight) => total + weight);

        // generate a random number between 0 and the total weight
        let randomized = Math.floor(Math.random() * totalWeight);
        // find the selected number using Array.find()
        for (let i = 0; i < weights.length; i++) {
            if (randomized < weights[i]) return i + 1
            randomized -= weights[i]
        }
    };
    function removeDuplicates(arr) {
        // create an empty array to store unique items
        const uniqueItems = [];

        // loop through the array and add each item to the unique items array
        arr.forEach(item => {
            // check if the item already exists in the unique items array
            let exists = uniqueItems.find(uniqueItem => {
                // use the equals method to compare the two Enchant instances
                return item.equals(uniqueItem);
            });

            // if the item does not already exist, add it to the unique items array
            if (!exists) {
                uniqueItems.push(item);
            }
        });

        // return the array of unique items
        return uniqueItems;
    };
    function makePickaxeName(enchantNumber) {
        //? by switching with false we can use conditions inside the cases.
        switch (true) {
            case enchantNumber > 15:
                return `§r§g${NamePool.prefixD[Math.floor(Math.random*NamePool.prefixD.length)]} ${NamePool.nameD[Math.floor(Math.random*NamePool.nameD.length)]} ${NamePool.suffixD[Math.floor(Math.random*NamePool.suffixD.length)]}`;
            case enchantNumber > 10:
                return `§r§e${NamePool.prefixC[Math.floor(Math.random*NamePool.prefixC.length)]} ${NamePool.nameC[Math.floor(Math.random*NamePool.nameC.length)]} ${NamePool.suffixC[Math.floor(Math.random*NamePool.suffixC.length)]}`;
            case enchantNumber > 5:
                return `§r§b${NamePool.prefixB[Math.floor(Math.random*NamePool.prefixB.length)]} ${NamePool.nameB[Math.floor(Math.random*NamePool.nameB.length)]} ${NamePool.suffixB[Math.floor(Math.random*NamePool.suffixB.length)]}`;
            case enchantNumber > 3:
                return `§r§a${NamePool.prefixA[Math.floor(Math.random*NamePool.prefixA.length)]} ${NamePool.nameA[Math.floor(Math.random*NamePool.nameA.length)]} ${NamePool.suffixA[Math.floor(Math.random*NamePool.suffixA.length)]}`;
            default:
                return `§r§7${NamePool.prefixA[Math.floor(Math.random*NamePool.prefixA.length)]} ${NamePool.nameA[Math.floor(Math.random*NamePool.nameA.length)]} ${NamePool.suffixA[Math.floor(Math.random*NamePool.suffixA.length)]}`;
        }
    }

    //? roll enchants
    const enchants = [];
    for (let i = 0; i < randomEnchantNumber(EnchantList.length); i++) {
        enchants.push(roll());
    };

    //? remove duplicate enchants from the array, then roll the levels for each unique enchant.
    const uniqueEnchants = removeDuplicates(enchants);
    const outputEnchants = [];
    let lore = "§r";
    uniqueEnchants.forEach((enchant) => {
        //! I don't know if this both sets enchantNumber to the rolled level and sets the class instance's level to it.
        enchantNumber += enchant.rollLevel()
        outputEnchants.push(Object.assign(enchant, {
            name: enchant.name,
            level: enchant.level
        }))
        lore += `${enchant.name} ${Aux.toRoman(enchant.level)}\n`
    })

    lore += `\n${enchantNumber > 15 ? `§g§lRARITA' §7(§g${enchantNumber}§7)` : enchantNumber > 10 ? `§e§lRARITA' §7(§e${enchantNumber}§7)` : enchantNumber > 5 ? `§b§lRARITA' §7(§b${enchantNumber}§7)` : enchantNumber > 3 ? `§a§lRARITA' §7(§a${enchantNumber}§7)` : `§7§lRARITA' §7(§f${enchantNumber}§7)`}`

    item.nameTag = makePickaxeName(enchantNumber)
    item.setLore([JSON.stringify(outputEnchants), lore])
    inventory.setItem(player.selectedSlot, item)
    player.removeTag('randomPickaxe')
}

system.run(function ticking() {
    let players = [...world.getPlayers()].forEach((player) => {
        if (player.hasTag('randomPickaxe')) randomEnchant(player)
    });
    system.run(ticking);
});


world.events.blockBreak.subscribe((data) => {
    const player = data.player;
    const item = data.player.getComponent('inventory').container.getItem(data.player.selectedSlot);
    const itemLore = item.getLore();

    console.warn(itemLore)

})

