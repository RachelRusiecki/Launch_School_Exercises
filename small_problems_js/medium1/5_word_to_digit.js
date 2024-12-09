/*

Write a function that takes a sentence string as an argument and returns that string with every occurrence of a "number word" — 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' — converted to its corresponding digit character.

*/

function wordToDigit(sentence) {
  const NUMBER_WORDS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six',
                        'seven', 'eight', 'nine'];

  const REGEX = /\b(zero|one|two|three|four|five|six|seven|eight|nine)\b/g;
  let matches = sentence.match(REGEX) || [];

  for (let index = 0; index < matches.length; index += 1) {
    let digit = NUMBER_WORDS.indexOf(matches[index]);
    sentence = sentence.replace(matches[index], digit);
  }

  return sentence;
}

console.log(wordToDigit('Please call me at five five five one two three four. Thanks.'));
                        //=== "Please call me at 5 5 5 1 2 3 4. Thanks.");

console.log(wordToDigit('The weight is done.'));
