/*

Write a function that rotates the last n digits of a number. For the rotation, rotate by one digit to the left, moving the first digit to the end.

*/

function rotateRightmostDigits(integer, rotations) {
  let leftDigits = String(integer).slice(0, -rotations);
  let rightDigits = String(integer).slice(-rotations);
  let rotated = `${[...rightDigits].slice(1).join('')}${[...rightDigits][0]}`;

  return Number(`${leftDigits}${rotated}`);
}

console.log(rotateRightmostDigits(735291, 1) === 735291);
console.log(rotateRightmostDigits(735291, 2) === 735219);
console.log(rotateRightmostDigits(735291, 3) === 735912);
console.log(rotateRightmostDigits(735291, 4) === 732915);
console.log(rotateRightmostDigits(735291, 5) === 752913);
console.log(rotateRightmostDigits(735291, 6) === 352917);
