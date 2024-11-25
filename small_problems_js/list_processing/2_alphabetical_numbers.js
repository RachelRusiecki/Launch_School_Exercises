// Write a function that takes an array of integers between 0 and 19 and returns an array of those integers sorted based on the English word for each number:
// zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen
// Do not mutate the argument.

function alphabeticNumberSort(integers) {
  const NUMBER_WORDS = ['zero', 'one', 'two', 'three', 'four', 'five', 'six',
                       'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
                       'thirteen', 'fourteen', 'fifteen', 'sixteen',
                       'seventeen', 'eighteen', 'nineteen'];

  return integers.map(integer => NUMBER_WORDS[integer]).sort().map(word => {
    return NUMBER_WORDS.indexOf(word);
  });
}

console.log(alphabeticNumberSort(
  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]));

// The Array.prototype.sort method can also take a function expression as an argument. If you didn't use one the first time, try refactoring the solution using a function expression.

function alphabeticNumberSortRevised(array) {
  return [...array].sort((num1, num2) => {
    const NUMBER_WORDS = ['zero', 'one', 'two', 'three', 'four', 'five',
                          'six', 'seven', 'eight', 'nine', 'ten', 'eleven',
                          'twelve', 'thirteen', 'fourteen', 'fifteen',
                          'sixteen', 'seventeen', 'eighteen', 'nineteen'];
  
    if (NUMBER_WORDS[num1] > NUMBER_WORDS[num2]) {
      return 1;
    } else if (NUMBER_WORDS[num1] < NUMBER_WORDS[num2]) {
      return -1;
    } else {
      return 0;
    }
  });
}

console.log(alphabeticNumberSortRevised(
  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19]));
