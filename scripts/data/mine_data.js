import { Enchant } from '../functions/enchant'

export const EnchantList = [
    new Enchant("Uno", 1000, [100,10,3], 3, "onDig", () => {console.warn("enchant fired")}),
    new Enchant("Due", 1000, [100,10,3], 3, "onGive", () => {console.warn("enchant fired")}),
    new Enchant("Tre", 1000, [100,10,3], 3, "onReset", () => {console.warn("enchant fired")}),
    new Enchant("Quattro", 1000, [100,10,3], 3, "onBreak", () => {console.warn("enchant fired")}),
    new Enchant("Cinque", 1000, [100,10,3], 3, "onHalf", () => {console.warn("enchant fired")}),
    new Enchant("Sei", 1000, [100,10,3], 3, "onTick", () => {console.warn("enchant fired")}),
    new Enchant("Sette", 1000, [100,10,3], 3, "onUse", () => {console.warn("enchant fired")})
]