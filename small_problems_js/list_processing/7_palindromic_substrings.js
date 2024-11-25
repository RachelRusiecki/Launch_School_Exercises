// Write a function that returns a list of all substrings of a string that are palindromic. That is, each substring must consist of the same sequence of characters forwards as backwards. The substrings in the returned list should be sorted by their order of appearance in the input string. Duplicate substrings should be included multiple times.
// You may (and should) use the substrings function you wrote in the previous exercise.
// For the purpose of this exercise, you should consider all characters and pay attention to case; that is, 'AbcbA' is a palindrome, but 'Abcba' and 'Abc-bA' are not. In addition, assume that single characters are not palindromes.

function substrings(string) {
  return [...string].flatMap((_, index) => {
    return leadingSubstrings(string.slice(index));
  });
}

function leadingSubstrings(string) {
  let substrings = [];
  for (let size = 1; size <= string.length; size += 1) {
    substrings.push(string.slice(0, size));
  }

  return substrings;
}

function palindromes(string) {
  return substrings(string).filter(substring => {
    return substring.length > 1 &&
           substring === [...substring].reverse().join('');
  });
}

console.log(palindromes('abcd'));
console.log(palindromes('madam'));
console.log(palindromes('hello-madam-did-madam-goodbye'));
console.log(palindromes('knitting cassettes'));
