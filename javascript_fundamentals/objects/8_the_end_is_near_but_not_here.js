// The penultimate function takes a string as an argument and returns the next-to-last word in the string. The function assumes that "words" are any sequence of non-whitespace characters. The function also assumes that the input string will always contain at least two words. The penultimate function in the example below does not return the expected result. Run the code below, check the current result, identify the problem, explain what the problem is, and provide a working solution.

function penultimate(string) {
  return string.split(' ')[-2];
}

console.log(penultimate('last word'));                    // expected: "last"
console.log(penultimate('Launch School is great!'));      // expected: "is"

// The problem is that array elements cannot be referenced by negative indices, they can only be set as properties. The solution is to us the slice method instead of bracket notation b/c that method can take negative numbers as arguments:

function penultimateRevised(string) {
  return string.split(' ').slice(-2, -1)[0];
}

console.log(penultimateRevised('last word'));                    // expected: "last"
console.log(penultimateRevised('Launch School is great!'));      // expected: "is"
