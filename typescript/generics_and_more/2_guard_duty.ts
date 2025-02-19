// Write a function printId that takes a parameter which could be either a number or a string. Inside the function, use a type guard to print "Your ID is a number" if the type is a number, or "Your ID is a string" if the type is a string.

function printId(id: number | string): void {
  if (typeof id === 'number') {
    console.log('Your ID is a number');
  } else {
    console.log('Your ID is a string');
  }
}

printId(101);
printId('202');
