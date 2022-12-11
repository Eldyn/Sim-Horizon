import {world} from '@minecraft/server'
/**
 * Converts an Arabic number to a Roman numeral.
 *
 * @param {number} num - The Arabic number to be converted.
 * @return {string} The Roman numeral equivalent of the input number.
 */
export function toRoman(num) {
    // Define an array of Roman numerals and their corresponding Arabic values
    const romanNumerals = [
      { arabic: 1000, roman: "M" },
      { arabic: 900, roman: "CM" },
      { arabic: 500, roman: "D" },
      { arabic: 400, roman: "CD" },
      { arabic: 100, roman: "C" },
      { arabic: 90, roman: "XC" },
      { arabic: 50, roman: "L" },
      { arabic: 40, roman: "XL" },
      { arabic: 10, roman: "X" },
      { arabic: 9, roman: "IX" },
      { arabic: 5, roman: "V" },
      { arabic: 4, roman: "IV" },
      { arabic: 1, roman: "I" }
    ];
  
    // Create an empty string to store the Roman numeral
    let romanNumeral = "";
  
    // Loop through the array of Roman numerals
    for (const numeral of romanNumerals) {
      // Check if the current Arabic value is less than or equal to the input number
      while (num >= numeral.arabic) {
        // Add the corresponding Roman numeral to the result string
        romanNumeral += numeral.roman;
  
        // Subtract the Arabic value from the input number
        num -= numeral.arabic;
      }
    }
  
    // Return the Roman numeral
    return romanNumeral;
}
/**
* Takes a string that will be formatted into a vanished string.
* A vanished string is a string with escape values, which minecraft will ignore and remove.
* although it'll be completely readable by the script.
* @param {String} string Input string to vanish
* @return {String} Vanished string 
*/
export function vanishString(string) { return ("§" + string.replace(/(.{1})/g,"$1§").slice(0, -1)) };
/**
* Takes a vanished string which will be reconverted to a normal string.
* @param {String} string Input string to unvanish
* @return {String} Unanished string 
*/
export function unVanishString(string) { return string.replace(/§/g,"") };
/**
* clamps a number
* @param {Number} n the number to clamp
* @param {Number} min the minimum number that N can become
* @param {Number} max the maximum number that N can become
* @return {Number} clamped value 
*/
export function clamp(n, min, max) { return n < min ? min : n > max ? max : n };  

export function getScore(player, objective, usesNaN = false) {
  try {
      const score = world.scoreboard
          .getObjective(objective)
          .getScore(player.scoreboard);
      return score;
  } catch(err) {
    console.warn(err)
      if (!usesNaN) return 0;
      else return NaN
  }
}