// Build a program that asks the user to enter the length and width of a room in meters, and then logs the area of the room to the console in both square meters and square feet.

let rlSync = require('readline-sync');
const SQFT_PER_SQMETER = 10.7639;

// let length = rlSync.question('Enter the length of the room in meters:\n');
// let width = rlSync.question('Enter the width of the room in meters:\n');
// let areaMeters = (Number(length) * Number(width)).toFixed(2);
// let areaFeet = (areaMeters * SQFT_PER_SQMETER).toFixed(2);

// console.log(`The area of the room is ${areaMeters} square meters (` +
//             `${areaFeet} square feet).`);

// Modify the program so that it asks the user for the input type (meters or feet). Compute for the area accordingly, and log it and its conversion in parentheses.

let unit = rlSync.question('Please choose meters or feet.\n');
let length = rlSync.question(`Enter the length of the room in ${unit}:\n`);
let width = rlSync.question(`Enter the width of the room in ${unit}:\n`);
let area = (Number(length) * Number(width)).toFixed(2);
let convertedArea;

if (unit === 'feet') {
  convertedArea = (area / SQFT_PER_SQMETER).toFixed(2);
  console.log(`The area of the room is ${area} square feet ` +
              `(${convertedArea} square meters).`);
} else {
  convertedArea = (area * SQFT_PER_SQMETER).toFixed(2);
  console.log(`The area of the room is ${area} square meters ` +
              `(${convertedArea} square feet).`);
}
