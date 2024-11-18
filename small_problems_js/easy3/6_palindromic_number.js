// Write a function that returns true if its integer argument is palindromic, or false otherwise. A palindromic number reads the same forwards and backwards.

function isPalindromicNumber(integer) {
  return String(integer) === String(integer).split('').reverse().join('');
}

console.log(isPalindromicNumber(34543));        // true
console.log(isPalindromicNumber(123210));       // false
console.log(isPalindromicNumber(22));           // true
console.log(isPalindromicNumber(5));            // true

// Suppose the number argument begins with one or more 0s. Will the solution still work? Why or why not? Is there any way to address this?

function isPalindromicNumberRevised(integer) {
  if (integer === 0) return true;
  while (integer % 10 === 0) integer /= 10;
  return integer.toString() === integer.toString().split('').reverse().join('');
}

console.log(isPalindromicNumberRevised(017710));
console.log(isPalindromicNumberRevised(01881000));
console.log(isPalindromicNumberRevised(0)); 

