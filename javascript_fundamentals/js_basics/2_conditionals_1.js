// Go over the following program. What does it log to the console at lines 7, 11, 15, and 19?

const myBoolean = true;
const myString = 'hello';
const myArray = [];
const myOtherString = '';

if (myBoolean) {
  console.log('Hello'); // Hello
}

if (!myString) {
  console.log('World'); // nothing
}

if (!!myArray) {
  console.log('World'); // World
}

if (myOtherString || myArray) {
  console.log('!'); // !
}
