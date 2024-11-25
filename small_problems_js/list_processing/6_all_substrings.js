// Write a function that returns a list of all substrings of a string. Order the returned list by where in the string the substring begins. This means that all substrings that start at index position 0 should come first, then all substrings that start at index position 1, and so on. Since multiple substrings will occur at each position, return the substrings at a given index from shortest to longest.
// You may (and should) use the leadingSubstrings function you wrote in the previous exercise:

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

console.log(substrings('abcde'));
