// Write a function that takes a floating point number representing an angle between 0 and 360 degrees and returns a string representing that angle in degrees, mins, and seconds. You should use a degree symbol (°) to represent degrees, a single quote (') to represent mins, and a double quote (") to represent seconds. There are 60 minutes in a degree, and 60 seconds in a minute.
// Note: You can use the following constant to represent the degree symbol:
// Note: your results may differ slightly depending on how you round values, but should generally be within a second or two of the results shown.

const DEGREE = '\u00B0';
const MINS_PER_DEGREE = 60;
const SECS_PER_MINUTE = 60;

function dms(angle) {
  let degrees = Math.floor(angle);
  let mins = Math.floor((angle % 1) * MINS_PER_DEGREE);
  let secs = Number(((((angle % 1) * SECS_PER_MINUTE) % 1) * 60).toFixed());

  if (secs === SECS_PER_MINUTE) {
    secs = 0;
    mins += 1;
  }

  if (mins === MINS_PER_DEGREE) {
    mins = 0;
    degrees += 1;
  }

  if (degrees === 360) degrees = 0;

  let result = `${degrees}${DEGREE}`;

  if (mins < 9) result += '0';
  result += `${mins}'`;

  if (secs < 9) result += '0';
  result += `${secs}"`

  return result;
}

console.log(dms(30)); //=== "30°00'00\"");
console.log(dms(76.73)); //=== "76°43'48\"");
console.log(dms(254.6)); //=== "254°35'59\"");
console.log(dms(93.034773)); //=== "93°02'05\"");
console.log(dms(0)); //=== "0°00'00\"");
console.log(dms(360)); //=== "360°00'00\"" || dms(360) === "0°00'00\"");

// The current solution implementation only works with positive numbers in the range of 0 to 360 (inclusive). Can you refactor it so that it works with any positive or negative number?
// Since degrees are normally restricted to the range 0-360, can you modify the code so it returns a value in the appropriate range when the input is less than 0 or greater than 360?

function dmsRevised(angle) {
  while (angle < 0) angle += 360;
  while (angle > 360) angle -= 360;

  let degrees = Math.floor(angle);
  let mins = Math.floor((angle % 1) * MINS_PER_DEGREE);
  let secs = Number(((((angle % 1) * SECS_PER_MINUTE) % 1) * 60).toFixed());

  if (secs === SECS_PER_MINUTE) {
    secs = 0;
    mins += 1;
  }

  if (mins === MINS_PER_DEGREE) {
    mins = 0;
    degrees += 1;
  }

  if (degrees === 360) degrees = 0;

  let result = `${degrees}${DEGREE}`;

  if (mins < 9) result += '0';
  result += `${mins}'`;

  if (secs < 9) result += '0';
  result += `${secs}"`

  return result;
}

console.log(dmsRevised(-1));   // 359°00'00"
console.log(dmsRevised(400));  // 40°00'00"
console.log(dmsRevised(-40));  // 320°00'00"
console.log(dmsRevised(-420)); // 300°00'00"

