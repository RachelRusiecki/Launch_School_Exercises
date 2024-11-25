// Write a function that takes a string argument and returns a list of substrings of that string. Each substring should begin with the first letter of the word, and the list should be ordered from shortest to longest.

function leadingSubstrings(string) {
  let substrings = [];
  for (let size = 1; size <= string.length; size += 1) {
    substrings.push(string.slice(0, size));
  }

  return substrings;
}

console.log(leadingSubstrings('abc'));      // ["a", "ab", "abc"]
console.log(leadingSubstrings('a'));        // ["a"]
console.log(leadingSubstrings('xyzzy'));    // ["x", "xy", "xyz", "xyzz", "xyzzy"]

// Rewrite leadingSubstrings using list processing functions. That is, convert the string into an array of some sort and use functions like map, filter, or reduce to get the desired substrings. (You will also need to use join.) Try not to use forEach as that is too similar to the for loop approach.

function leadingSubstringsRevised(string) {
  return string.split('').map((_, index) => string.slice(0, index + 1));
}

console.log(leadingSubstringsRevised('abc'));      // ["a", "ab", "abc"]
console.log(leadingSubstringsRevised('a'));        // ["a"]
console.log(leadingSubstringsRevised('xyzzy'));    // ["x", "xy", "xyz", "xyzz", "xyzzy"]
