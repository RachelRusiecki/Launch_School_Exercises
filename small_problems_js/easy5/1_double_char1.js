// Write a function that takes a string, doubles every character in the string, and returns the result as a new string.

function repeater(string) {
  return string.split('').map(letter => `${letter.repeat(2)}`).join('');
}

console.log(repeater('Hello'));        // "HHeelllloo"
console.log(repeater('Good job!'));    // "GGoooodd  jjoobb!!"
console.log(repeater(''));             // ""
