// What will the following code log to the console and why? Don't run the code until after you have tried to answer.

const array1 = ['Moe', 'Larry', 'Curly', 'Shemp', 'Harpo', 'Chico', 'Groucho',
                'Zeppo', { a: 1, b: 2 }];
const array2 = [];

for (let i = 0; i < array1.length; i += 1) {
  array2.push(array1[i]);
}

for (let i = 0; i < array1.length - 1; i += 1) {
  if (array1[i].startsWith('C')) {
    array1[i] = array1[i].toUpperCase();
  }
}

array1[8].a = 3;

console.log(array2);

// It will print the names without any uppercase names b/c the 2 arrays are referencing separate arrays. Changing array1 does not affect what happens to array 2.

// What would happen if an object literal was part of the array1 elements pushed to array2? Would changes made to the object literal in array1 be reflected in array2?
// How would you change the code so that any changes made to array1 in the second for loop get reflected to array2?

// const array3 = array1;

