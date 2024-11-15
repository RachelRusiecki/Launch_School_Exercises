// What will the following code log to the console and why? Don't run the code until after you have tried to answer.

const myObject = {
  prop1: '123',
  prop2: '234',
  'prop 3': '345',
};

const prop2 = '456';
myObject['prop2'] = '456';
myObject[prop2] = '678';

console.log(myObject[prop2]);
console.log(myObject.prop2);

// 678 & 456 b/c another property is added (key is '456', value is '678'); prop2 property was reassigned to '456'

// Here is another example. What do you think will be logged to the console this time, and why?

const myObj = {};
myObj[myFunc()] = 'hello, ';

function myFunc() {
  return 'funcProp';
}

console.log(myObj);
myObj[myFunc()] = 'world!';
console.log(myObj);

// { funcProp: 'hello, ' } & { funcProp: 'world!' } b/c the key is being set and reassigned to the return value of calling the funcProp function
