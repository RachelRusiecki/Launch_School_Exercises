// Read through the code below. What values will be logged to the console? Can you explain these results?

const languages = ['JavaScript', 'Ruby', 'Python'];
console.log(languages); // ['JavaScript', 'Ruby', 'Python'] 
console.log(languages.length); // 3

languages.length = 4;
console.log(languages); // ['JavaScript', 'Ruby', 'Python', <1 empty slot>]
console.log(languages.length); // 4

languages.length = 1;
console.log(languages); // ['JavaScript']
console.log(languages.length); // 1

languages.length = 3;
console.log(languages); // ['JavaScript', <2 empty slots>]
console.log(languages.length); // 3

languages.length = 1;
languages[2] = 'Python';
console.log(languages); // ['Javascript', <1 empty slot>, 'Python']
console.log(languages[1]); // undefined
console.log(languages.length); // 3

// First set logs the original array w/ length of 3
// Second set adds 1 more to length so adds 1 empty slot
// Third set shortens length to 1 so last elements are truncated
// Fourth set increases length to 3, but does not retreive previous elements, they are gone for good
// Fifth set inserts new element at index 2, which means an empty slot is used as a placeholder for index 1, so new length is now 3
