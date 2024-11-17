// What will the following program log to the console? Can you explain why?

const array = ['Apples', 'Peaches', 'Grapes'];

array[3.4] = 'Oranges';
console.log(array.length); // 3
console.log(Object.keys(array).length); // 4

array[-2] = 'Watermelon';
console.log(array.length); // 3
console.log(Object.keys(array).length); // 5

// The length property of the array only counts indices / elements, but Object.keys return ALL properties.
