import { Enchant } from '../functions/enchant'
import * as Aux from '../functions/auxiliary_functions'
export const EnchantList = [
    //* onGive enchants
    new Enchant("Damocles", 300, [1], 1, "onGive", async function(enchant, player) {await player.runCommandAsync(`scoreboard players set @s mine_durability 2147483607`)}, "onDig", async function (enchant, player) {let num = Aux.getScore(player, "mine_damage"); Math.random() <= (2147483607 - num) / 20000 ? await player.runCommandAsync(`scoreboard players set @s mine_damage 0`) : false}),
    new Enchant("Due", 800, [2,1], 2, "onGive", async function(enchant, player) {await player.runCommandAsync(`playsound note.pling @s ~~~ 1 ${enchant.level} 1`)}),
    new Enchant("Due Due", 800, [2,2,2,2], 4, "onGive", async function(enchant, player) {await player.runCommandAsync(`playsound note.pling @s ~~~ 1 ${enchant.level} 1`)}),
    //* onDig enchants
    new Enchant("Uno", 1000, [1], 1, "onDig", async function(enchant, player) {await player.runCommandAsync(`playsound note.pling @s ~~~ 1 ${enchant.level} 1`)}),
    //* onReset enchants
    new Enchant("Tre", 700, [20,10,1], 3, "onReset", () => {console.warn("enchant fired")}),
    //* onBreak enchants
    new Enchant("Re:Life", 600, [1], 1, "onBreak", async function(enchant, player, item) {await player.runCommandAsync(`function mine/enchants/relife`)}),
    //* onHalf enchants
    new Enchant("Cinque", 500, [20,10,1], 3, "onHalf", () => {console.warn("enchant fired")}),
    //* onTick enchants
    new Enchant("Sei", 400, [2,1], 2, "onTick", () => {console.warn("enchant fired")}),
    //* onUse enchants
    new Enchant("Sette", 300, [2,1], 2, "onUse", () => {console.warn("enchant fired")}),
]

export const NamePool = {
    prefixA: ["Old", "Rusted", "Worn-Out", "Time-Worn", "Dusty", "Useless", "Bad", "Stupid", "Poor", "Very Small", "Homeless", "Yellowed", "Rotten", "Trashy", "Bent", "Smelly", "Meaningless", "Sticky", "Depressed", "Childish", "Shy", "Dirty", "Maidenless", "Primitive", "Wild", "Savage", "Idiotic", "Fool", "Spoilt", "Raw", "Scrapped", "Slow", "Little", "Dull", "Lifeless", "Pale", "Lagging", "Troublesome", "Cheap", "Hopeless", "Fatherless", "Colorblind", "Small", "Tiny", "Mean", "Kind Of", "Ligma", "Inadequate", "Under Leveled", "Underwhelming", "Detrimental"],
    nameA: ["Pickaxe", "Mattock", "Axe", "Stick", "Hoe", "Shovel", "Back Scratcher", "Plunger", "Broom", "Pencil", "Slave", "Flower", "Toothpick", "Bone", "Branch", "Turnip", "Club", "Bat", "Failure", "Brick", "Walking-Stick", "Clothes-Hanger", "Needle", "Icycle", "Rod", "Shard", "Fork", "Spoon", "USB", "Rock"],
    suffixA: ["Idk", "", "Of The NOoB", "Of Fortnite", "Of The Maidenless", "Of The Chinese", "Of The What?", "Full Of Debts", "Without a Lawyer", "Without Love", "Without Friends", "Of The Ligma", "Of The Orphan", "Of The Town Idiot", "Of The Stone Age", "With No Future", "That Should Be Disposed", "That Must Be Buried", "Of GhostNeki", "From Napoli"],
    prefixB: ["Good", "Quite Reliable", "", "Succesful", "Fair", "Balanced", "Fine", "Tasty", "Well", "Kind", "Happy", "Good-Natured", "Good-Tempered", "Lovely", "Nice", "Normal", "Strong", "Brave", "Helpful", "Passionate", "Bright", "Sharp", "Well-Made", "Splendid", "Accurate", "Efficient", "Fit", "Proper", "Prudent", "Useful", "Thriving", "Agreeable", "Resistant", "Long-Lasting", "Abiding", "Firm", "Hard-Wearing", "Hardened"],
    nameB: ["bb", "CUM", "siummer"],
    suffixB: ["bbb", "amongususususussssss", "amo-who?"],
    prefixC: ["c", "decececeiututtutut", "sugoma"],
    nameC: ["cc", "suspicious", "gumamamamtyusi"],
    suffixC: ["ccc", "FAKEEEER", "sium faker"],
    prefixD: ["d", "flash", "ignite"],
    nameD: ["dd", "ammmmmmmmm", "aaaaaaaaas"],
    suffixD: ["ddd", "sugoma?", "susus?"],
}