/*

You have a bank of switches before you, numbered from 1 to n. Every switch is connected to exactly one light that is initially off. You walk down the row of switches and toggle every one of them. You walk back to the beginning of the row and start another pass. On this second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go back to the beginning again, this time toggling switches 3, 6, 9, and so on. You continue to repeat this process until you have gone through n repetitions.

Write a program that takes one argument—the total number of switches—and returns an array of the lights that are on after n repetitions.

---- PROBLEM ----

Input: number of switches & number of repetitions
Output: on switches

- Arg will always be number
- If multiple args, ignore all but first
- If no arg, return undefined
- Numbers will always be positive integers
- Return value is array of numbers representing ON switches

---- DATA STRUCTURES ----

- Array of boolean, index represents switch #

---- ALGORITHM ----

- Validate input
  - If input is undefined, return undefined

- Create array of n false values
  - Initialize empty array 'switches'
  - Start for loop, w/ index is 0, while index < n, increase index by 1
    - Push false to new array

- Iterate from 1 through n
  - Start for loop w/ index starting at 1, while index <= n, increase index by 1
    - Iterate through switches array (forEach)
      - If current (index + 1) is divisible by iteration #
        - Reassign value to opposite value

- Return array of numbers (index + 1) where values are true
  - Create new empty array
  - Iterate through switches array
    - If (element is true):
      - Push index + 1 to result array
  
- Return result array

*/

function lightsOn(switches) {
  if (switches === undefined) return undefined;

  let switchValues = [];
  for (let index = 0; index < switches; index += 1) {
    switchValues.push(false);
  }

  for (let counter = 1; counter <= switches; counter += 1) {
    switchValues.forEach((value, index) => {
      if ((index + 1) % counter === 0) {
        switchValues[index] = !value;
      }
    });
  }
  
  let onSwitches = [];
  switchValues.forEach((value, index) => {
    if (value) onSwitches.push(index + 1);
  });

  return onSwitches;
}

console.log(lightsOn(5));        // [1, 4]
// Detailed result of each round for `5` lights
// Round 1: all lights are on
// Round 2: lights 2 and 4 are now off;     1, 3, and 5 are on
// Round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
// Round 4: lights 2 and 3 are now off;     1, 4, and 5 are on
// Round 5: lights 2, 3, and 5 are now off; 1 and 4 are on

console.log(lightsOn(100));      // [1, 4, 9, 16, 25, 36, 49, 64, 81, 100]
console.log(lightsOn());      // undefined
console.log(lightsOn(5, 18));        // [1, 4]
