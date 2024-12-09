/*

Write a function that displays an 8-pointed star in an nxn grid, where n is an odd integer that is supplied as an argument to the function. The smallest such star you need to handle is a 7x7 grid (i.e., when n is 7).

---- PROBLEM ----

Input: number
Output: display star (8 pointed)

Rules:
- Function should return undefined, but print star to console
- Arg can be any data type, if not odd integer, print nothing, (even num string) return undefined
- Integer can be any number, if less than 7, print nothing return undefined
- If negative, print nothing
- If float, print nothing
- If even, print nothing
- If no arg, print nothing
- If multiple args, ignore all but first
- Always print '*'

Notes:
- All rows will have 3 stars except middle row (n -1), which will have n stars
- Stars start at corners & work inward
- to find spaces, take (n - 1) / 2 & then subtract 1 more

---- DATA STRUCTURES ----

- Strings
- Iteration

---- ALGORITHM ----

- Validate input
  - Invoke validInput() function, if false, return undefined

- Set leading spaces to 0
  - Initailize variable to 0

- Set inner spaces to ((n - 1) / 2) - 1
  - Initialize variable to formula

- Print Ascending rows
  - Start loop while inner spaces at >= 0
    - Print (' ') leading spaces times + '*' + (' ') inner spaces times + '*' + (' ') inner spaces times + '*'
    - Increase leading spaces by 1
    - Decrease inner spaces by 1

- Print middle row
  - Print n stars '*'

- Print descending rows
  - Start loop while leading spaces at >= 0
    - Print (' ') leading spaces times + '*' + (' ') inner spaces times + '*' + (' ') inner spaces times + '*'
    - Decrease leading spaces by 1
    - Increase inner spaces by 1

HELPER: validInput
  - Check if data type is number, if not, return undefined
  - Check if number is < 7, if not return undefined
  - Check if number % 1 is not 0, return undefined
  - Check if number % 2 is 0, return undefined

*/

function star(grid) {
  if (!validInput(grid)) return undefined;

  let leadingSpaces = 0
  let innerSpaces = ((grid - 1) / 2) -1;

  while (innerSpaces >= 0) {
    console.log(' '.repeat(leadingSpaces) + '*' + ' '.repeat(innerSpaces) +
                '*' + ' '.repeat(innerSpaces) + '*');
    leadingSpaces += 1;
    innerSpaces -= 1;
  }

  console.log('*'.repeat(grid));

  leadingSpaces -= 1;
  innerSpaces += 1; 

  while (leadingSpaces >= 0) {
    console.log(' '.repeat(leadingSpaces) + '*' + ' '.repeat(innerSpaces) +
                '*' + ' '.repeat(innerSpaces) + '*');
    leadingSpaces -= 1;
    innerSpaces += 1;
  }
}

function validInput(input) {
  if (typeof input !== 'number') return false;
  if (input < 7) return false;
  if (input % 1 !== 0) return false;
  if (input % 2 === 0) return false;

  return true;
}

star(7);
// logs
// *  *  *
//  * * *
//   ***
// *******
//   ***
//  * * *
// *  *  *

star(9);
// logs
// *   *   *
//  *  *  *
//   * * *
//    ***
// *********
//    ***
//   * * *
//  *  *  *
// *   *   *

console.log(star('7') === undefined);
console.log(star([1, 2, 3]) === undefined);
console.log(star(-9) === undefined);
console.log(star(11.5) === undefined);
console.log(star(8) === undefined);
console.log(star() === undefined);

star(7, 8);
star(15, 8);
