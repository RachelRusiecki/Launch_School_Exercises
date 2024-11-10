// In the modern era under the Gregorian Calendar, leap years occur in every year that is evenly divisible by 4, unless the year is also divisible by 100. If the year is evenly divisible by 100, then it is not a leap year, unless the year is also evenly divisible by 400.
// Assume this rule is valid for any year greater than year 0. Write a function that takes any year greater than 0 as input and returns true if the year is a leap year or false if it is not a leap year.

function isLeapYear(year) {
  if (year % 400 === 0) {
    return true;
  } else if (year % 100 === 0) {
    return false;
  } else {
    return year % 4 === 0;
  }
}

console.log(isLeapYear(2016));      // true
console.log(isLeapYear(2015));      // false
console.log(isLeapYear(2100));      // false
console.log(isLeapYear(2400));      // true
console.log(isLeapYear(240000));    // true
console.log(isLeapYear(240001));    // false
console.log(isLeapYear(2000));      // true
console.log(isLeapYear(1900));      // false
console.log(isLeapYear(1752));      // true
console.log(isLeapYear(1700));      // false
console.log(isLeapYear(1));         // false
console.log(isLeapYear(100));       // false
console.log(isLeapYear(400));       // true

// Can you rewrite isLeapYear to perform its tests in the opposite order of the above solution? That is, test whether the year is divisible by 4 first, then, if necessary, test whether it is divisible by 100, and finally, if necessary, test whether it is divisible by 400. Is this solution simpler or more complex than the original solution?

function isLeapYearReversed(year) {
  if (year % 4 === 0) {
    if (year % 100 === 0) {
      return year % 400 === 0;
    } else {
      return true;
    } 
  }

  return false;
}

console.log(isLeapYearReversed(2016));      // true
console.log(isLeapYearReversed(2015));      // false
console.log(isLeapYearReversed(2100));      // false
console.log(isLeapYearReversed(2400));      // true
console.log(isLeapYearReversed(240000));    // true
console.log(isLeapYearReversed(240001));    // false
console.log(isLeapYearReversed(2000));      // true
console.log(isLeapYearReversed(1900));      // false
console.log(isLeapYearReversed(1752));      // true
console.log(isLeapYearReversed(1700));      // false
console.log(isLeapYearReversed(1));         // false
console.log(isLeapYearReversed(100));       // false
console.log(isLeapYearReversed(400));       // true
