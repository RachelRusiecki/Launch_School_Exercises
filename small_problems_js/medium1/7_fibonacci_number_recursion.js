// Write a recursive function that computes the nth Fibonacci number, where nth is an argument passed to the function.

function fibonacci(sequenceNum) {
  if (sequenceNum <= 2) return 1;
  return fibonacci(sequenceNum - 1) + fibonacci(sequenceNum - 2);
}

console.log(fibonacci(1) === 1);       // 1
console.log(fibonacci(2) === 1);       // 1
console.log(fibonacci(3) === 2);       // 2
console.log(fibonacci(4) === 3);       // 3
console.log(fibonacci(5) === 5);       // 5
console.log(fibonacci(12) === 144);      // 144
console.log(fibonacci(20) === 6765);      // 6765
