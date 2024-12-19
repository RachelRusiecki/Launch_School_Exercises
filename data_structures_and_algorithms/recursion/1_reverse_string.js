// Implement a recursive function that reverses a given string. The function should take a string as input and return its reverse. For example, if the input is "hello", the function should return "olleh". Solve the problem using recursion.

// function reverseString(string) {
//   const chars = [...string];

//   function swapChars(string) {
//     if (string.length <= 1) return string;
//     [chars[0], chars[chars.length - 1]] = [chars[chars.length - 1], chars[0]];
//     return swapChars(chars.slice(1, chars.length - 1));
//   }

//   return swapChars(chars);
// }

function reverseString(string) {
  const chars = [...string];

  function swapChars(start, end) {
    if (start >= end) return chars;
    [chars[start], chars[end]] = [chars[end], chars[start]];
    return swapChars(start + 1, end - 1);
  }

  return swapChars(0, string.length - 1).join('');
}

console.log(reverseString("hello") === "olleh");
console.log(reverseString("world") === "dlrow");
console.log(reverseString("a") === "a");
console.log(reverseString("") === "");
console.log(reverseString("recursion") === "noisrucer");
