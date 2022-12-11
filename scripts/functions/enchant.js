export class Enchant {
    constructor(name, weight, perLevelWeight, maxLevel, type, onTrigger, mixedType, mixedTrigger) {
        this.name = name;
        this.weight = weight;
        this.perLevelWeight = perLevelWeight
        this.maxLevel = maxLevel;
        this.type = type;
        this.onTrigger = onTrigger;
        this.level = 0;
        this.mixedType = mixedType;
        this.mixedTrigger = mixedTrigger;
        this.equals = function(other) {
          return other.name === this.name
        };
    };
    rollLevel() {
        // calculate the total weight using Array.reduce()
        let total = this.perLevelWeight.reduce((total, weight) => total + weight);

        // generate a random number between 0 and the total weight
        let randomized = Math.random() * total;

        // loop through the levels and select one based on its weight
        for (let i = 0; i < this.maxLevel; i++) {
            if (randomized < this.perLevelWeight[i]) {
            this.level = i+1
            return i+1
            }
        randomized -= this.perLevelWeight[i];
        }
    }
    
    runEnchant(player, item = undefined) {
        this.onTrigger(this, player, item)
    }

    runMixedEnchant(player, item = undefined) {
        this.mixedTrigger(this, player, item)
    }
}