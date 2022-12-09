export class Enchant {
    constructor(name, weight, perLevelWeight, maxLevel, type, onTrigger) {
        this.name = name;
        this.weight = weight;
        this.perLevelWeight = perLevelWeight
        this.maxLevel = maxLevel;
        this.type = type;
        this.onTrigger = onTrigger;
        this.level = 0;
        this.equals = function(other) {
          return other.name === this.name
        }
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
    
    runEnchant() {
        this.onTrigger(this.level, this.type)
    }
}