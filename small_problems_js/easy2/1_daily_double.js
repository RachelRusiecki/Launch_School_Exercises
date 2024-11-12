// Write a function that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

function crunch(str) {
  result = '';
  for (let idx = 0; idx < str.length; idx += 1) {
    if (str[idx] !== str[idx + 1]) result += str[idx];
  }

  return result;
}

// console.log(crunch('ddaaiillyy ddoouubbllee'));    // "daily double"
// console.log(crunch('4444abcabccba'));              // "4abcabcba"
// console.log(crunch('ggggggggggggggg'));            // "g"
// console.log(crunch('a'));                          // "a"
// console.log(crunch(''));                           // ""

// It's also possible to solve this using regular expressions. For a nice challenge, give this a try with regular expressions.

function regexCrunch(str) {
  return str.replaceAll(/(.)\1+/g, '$1');
}

console.log(regexCrunch('ddaaiillyy ddoouubbllee'));    // "daily double"
console.log(regexCrunch('4444abcabccba'));              // "4abcabcba"
console.log(regexCrunch('ggggggggggggggg'));            // "g"
console.log(regexCrunch('a'));                          // "a"
console.log(regexCrunch(''));                           // ""
