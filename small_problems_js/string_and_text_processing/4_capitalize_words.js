// Write a function that takes a string as an argument and returns that string with the first character of every word capitalized and all subsequent characters in lowercase.
// You may assume that a word is any sequence of non-whitespace characters.

function wordCap(string) {
  let capitalizedWords = string.split(' ').map(word => {
    return `${word[0].toUpperCase()}${word.slice(1).toLowerCase()}`;
  });

  return capitalizedWords.join(' ');
}

console.log(wordCap('four score and seven'));       // "Four Score And Seven"
console.log(wordCap('the javaScript language'));    // "The Javascript Language"
console.log(wordCap('this is a "quoted" word'));    // 'This Is A "quoted" Word'
