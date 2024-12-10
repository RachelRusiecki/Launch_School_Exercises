/*

Write a function that implements the Vigenere Cipher. The case of the keyword doesn't matter—in other words, the resulting encryption won't change depending on the case of the keyword's letters (e.g., 'MEat' === 'mEaT').

*/

function vigenere(plaintext, keyword) {
  const alphabet = 'abcdefghijklmnopqrstuvwxyz'.repeat(2);
  let keywordChars = [...keyword].map(char => char.toLowerCase());

  let cipherChars = [...plaintext].map(char => {
    if (/[a-z]/.test(char)) {
      let currentIndex = alphabet.indexOf(char);
      let newIndex = currentIndex + alphabet.indexOf(keywordChars.shift());

      if (keywordChars.length === 0) {
        keywordChars = [...keyword].map(char => char.toLowerCase());
      }

      return alphabet.charAt(newIndex);
    } else if (/[A-Z]/.test(char)) {
      let currentIndex = alphabet.indexOf(char.toLowerCase());
      let newIndex = currentIndex + alphabet.indexOf(keywordChars.shift());

      if (keywordChars.length === 0) {
        keywordChars = [...keyword].map(char => char.toLowerCase());
      }

      return alphabet.charAt(newIndex).toUpperCase();
    } else {
      return char;
    }
  });

  return cipherChars.join('');
}

console.log(vigenere("Pineapples don't go on pizzas!", "mEaT") ===
                      "Bmnxmtpeqw dhz'x gh ar pbldal!");

console.log(vigenere("Pineapples don't go on pizzas!", "A") === 
                      "Pineapples don't go on pizzas!");

console.log(vigenere("Pineapples don't go on pizzas!", "Aa") ===
                      "Pineapples don't go on pizzas!");

console.log(vigenere("Pineapples don't go on pizzas!", "cab") ===
                      "Riogaqrlfu dpp't hq oo riabat!");

console.log(vigenere('Dog', 'Rabbit') === 'Uoh');
