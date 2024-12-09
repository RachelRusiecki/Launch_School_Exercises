/*

A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to only those words that do not use both letters from any given block. You can also only use each block once.

Write a function that takes a word string as an argument and returns true if the word can be spelled using the set of blocks, false otherwise. You can consider the letters to be case-insensitive when you apply the rules.

---- PROBLEM ----

Input: word
Output: boolean

Rules:
- Arg will always be 1 string
- Cannot use both letters of any 1 block
- Can only use block once
- Cannot use duplicate letters
- Case insensitive
- Input strings can only contain letters & spaces

---- DATA STRUCTURES ----

- Array of string blocks

---- ALGORITHM ----

- Create array of block strings
  - ['BO', 'XK', ...]

- Create array of used letters
  - Initialize empty array for used letters

- Iterate through input string, passing in both current char & pair letter into used letter array
  - Start for loop: index is 0, while index < length of string, index + 1
    - If current is included in used letters, immediately return false
    - Iterate through block strings array
      - If upper case current char is included in current block
        - Push upper case block strings index 0 & 1 to used letters array

- Return T/F based on if any used letters are found in letters
  - Return true if this step is reached

*/

function isBlockWord(word) {
  const blocks = ['BO', 'XK', 'DQ', 'CP', 'NA', 'GT', 'RE', 'FS', 'JW', 'HU', 'VI', 'LY', 'ZM',];

  let usedLetters = [];
  for (let index = 0; index < word.length; index += 1) {
    if (usedLetters.includes(word[index].toUpperCase())) return false;

    blocks.forEach(block => {
      if (block.includes(word[index].toUpperCase())) {
        usedLetters.push(block[0], block[1]);
      }
    });
  }

  return true;
}

// console.log(isBlockWord('BATCH'));      // true
// console.log(isBlockWord('BUTCH'));      // false
// console.log(isBlockWord('jest'));       // true
// console.log(isBlockWord('BuTcH'));      // false
// console.log(isBlockWord('B AT CH'));      // true

console.log(isBlockWord('BATCH'));      // true
console.log(isBlockWord('BUTCH'));      // false
console.log(isBlockWord('jest'));       // true
console.log(isBlockWord('floW'));       // true
console.log(isBlockWord('APPLE'));      // false
console.log(isBlockWord('apple'));      // false
console.log(isBlockWord('apPLE'));      // false
console.log(isBlockWord('Box'));        // false
