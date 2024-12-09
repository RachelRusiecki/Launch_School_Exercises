/*

Write a function that displays a four-pointed diamond in an nxn grid, where n is an odd integer supplied as an argument to the function. You may assume that the argument will always be an odd integer.

---- PROBLEM ----

Input: odd integer
Output: console.log

Rules:
- Print n X n grid of given input
- Input will always be positive whole number
- Will always be supplied arg
- Always only 1 arg
- Should return undefined, but print to console
- Number of rows will match given input
- Diamond can be printed either as 1 string or multiple calls to console.log

---- DATA STRUCTURES ----

- Strings (printed to console)

---- ALGORITHM ----

- Set spaces to floor of input / 2
  - Initialize new variable 'spaces' to floor((input / 2))

- Set stars to 1
  - Initialize new variable 'stars' to 1

- Loop to print ascending diamond
  - Start loop while stars <= input number
    - Print spaces repeated 'spaces' times + '*' repeated 'stars' times
    - Decrease spaces by 1
    - Increase 'stars' by 2

- Reassign 'spaces' to 1
- Reassign 'stars' to input - 2

- Loop to print descending diamond
  - Start loop while stars > 0
    - Print spaces repeated 'spaces' times + '*' repeated 'stars' times
    - Increase spaces by 1
    - Decrease 'stars' by 2

*/

function diamond(gridNumber) {
  let spaces = Math.floor(gridNumber / 2);
  let stars = 1;

  while (stars <= gridNumber) {
    console.log(' '.repeat(spaces) + '*'.repeat(stars));
    spaces -= 1;
    stars += 2;
  }

  spaces = 1;
  stars = gridNumber - 2;

  while (stars > 0) {
    console.log(' '.repeat(spaces) + '*'.repeat(stars));
    spaces += 1;
    stars -= 2;
  }
}

//examples:
diamond(1);
//*

diamond(3);
/*

 *
***
 *

*/


diamond(9);
/*

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

*/

console.log(diamond(9));
