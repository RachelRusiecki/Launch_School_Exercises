/*

Write a function that implements the Caesar Cipher. The Caesar Cipher is one of the earliest and simplest ways to encrypt `plaintext` so that a message can be transmitted securely. It is a substitution cipher in which each letter in a `plaintext` is substituted by the letter located a given number of positions away in the alphabet. For example, if the letter 'A' is right-shifted by 3 positions, it will be substituted with the letter 'D'. This shift value is often referred to as the key. The "encrypted `plaintext`" (ciphertext) can be decoded using this key value.

The Caesar Cipher only encrypts letters (including both lower and upper case). Any other character is left as is. The substituted letters are in the same letter case as the original letter. If the key value for shifting exceeds the length of the alphabet, it wraps around from the beginning.

---- PROBLEM ----

Input: message, cipher key
Output: encrypted message

Rules:
- Substitute given letter n positions
- Only letter are encrypted
- Can include lower & uppercase
- Non alphabetic characters are left as is
- Same letter case as original
- If key more than 26, ciher should wrap around (Ex: 'a', 26 => 'a')
- Will always be string & number respectively
- Number key will always be whole number 0 or more
- Strings can be empty, return empty string
- If number is 0, return same string

---- DATA STRUCTURES ----

- Strings / ASCII code
- Array of characters

---- ALGORITHM ----

- If number > 26, subtract 26 until its is less than 26
  - If num > 26, start loop (while num >= 26)
    - Reassign num to itself - 26

- Create result string
  - Initailize new empty string

- Find ranges for letter ASCII codes
  - Find min (a) code, max (z)
  - Find min (A) code, max (Z)
  - Set these in contstants

- Check all letters, get ASCII code for each letter
  - Start for loop w/ index staring at 0, going length of string, increase index by 1
    - If character is lowercase letter (regex)
      - Find ASCII code
      - Add key num to ASCII code
      - If new number NOT greater than min OR less than max
          - Reassign code to itself - 26
      - Find character at new ASCII code
      - Append char to result string
    - If character is uppercase letter (regex)
      - Find ASCII code
      - Add key num to ASCII code
      - If new number NOT greater than min OR less than max
          - Reassign code to itself - 26
      - Find character at new ASCII code
      - Append char to result string
    - If not letter:
      - Append char to result string

- Return result string

*/

function caesarEncrypt(message, key) {
  while (key >= 26) key -= 26;

  let result = '';

  let lowercaseMin = 'a'.charCodeAt(0);
  let lowercaseMax = 'z'.charCodeAt(0);
  let uppercaseMin = 'A'.charCodeAt(0);
  let uppercaseMax = 'Z'.charCodeAt(0);

  for (let index = 0; index < message.length; index += 1) {
    if (/[a-z]/.test(message[index])) {
      let asciiCode = message[index].charCodeAt(0) + key;

      if (!(asciiCode >= lowercaseMin && asciiCode <= lowercaseMax)) {
        asciiCode -= 26;
      }

      let newChar = String.fromCharCode(asciiCode);
      result += newChar;
    } else if (/[A-Z]/.test(message[index])) {
      let asciiCode = message[index].charCodeAt(0) + key;

      if (!(asciiCode >= uppercaseMin && asciiCode <= uppercaseMax)) {
        asciiCode -= 26;
      }

      let newChar = String.fromCharCode(asciiCode);
      result += newChar;
    } else {
      result += message[index];
    }
  }

  return result;
}

// simple shift
console.log(caesarEncrypt('A', 0));       // "A"
console.log(caesarEncrypt('A', 3));       // "D"

// // wrap around
console.log(caesarEncrypt('y', 5));       // "d"
console.log(caesarEncrypt('a', 47));      // "v"

// all letters
console.log(caesarEncrypt('ABCDEFGHIJKLMNOPQRSTUVWXYZ', 25));
// // "ZABCDEFGHIJKLMNOPQRSTUVWXY"
console.log(caesarEncrypt('The quick brown fox jumps over the lazy dog!', 5));
// // "Ymj vznhp gwtbs ktc ozrux tajw ymj qfed itl!"

// // many non-letters
console.log(caesarEncrypt('There are, as you can see, many punctuations. Right?; Wrong?', 2));
// "Vjgtg ctg, cu aqw ecp ugg, ocpa rwpevwcvkqpu. Tkijv?; Ytqpi?"
    Vjgtg ctg, cu aqw ecp ugg, ocpa rwpevwcvkqpu. Tkijv?; Ytqpi?

console.log(caesarEncrypt('', 8));       // ""
