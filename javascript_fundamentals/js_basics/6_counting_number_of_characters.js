// In this exercise, you will write a program that asks the user for a phrase, then outputs the number of characters in that phrase.

let rlSync = require('readline-sync');
let phrase = rlSync.question('Please enter a phrase: ');

console.log(`There are ${phrase.length} characters in "${phrase}".`);

// The solution counts all the characters in the phrase, including spaces. Refactor it so that it ignores spaces.

phraseNoSpaces = phrase.replaceAll(' ', '');

console.log(`There are ${phraseNoSpaces.length} characters in "${phrase}".`);

// As an added challenge, further refactor the solution so that it only counts alphabetic characters.

phraseLetterLength = phrase.replaceAll(/[^a-z]/gi, '').length;

console.log(`There are ${phraseLetterLength} characters in "${phrase}".`);
