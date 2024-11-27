// Write a function that takes a string and returns an object containing three properties: one representing the number of characters in the string that are lowercase letters, one representing the number of characters that are uppercase letters, and one representing the number of characters that are neither.

function letterCaseCount(string) {
  return {
    lowercase: (string.match(/[a-z]/g) || []).length,
    uppercase: (string.match(/[A-Z]/g) || []).length,
    neither: (string.match(/[^a-z]/gi) || []).length,
  };
}

console.log(letterCaseCount('abCdef 123'));  // { lowercase: 5, uppercase: 1, neither: 4 }
console.log(letterCaseCount('AbCd +Ef'));    // { lowercase: 3, uppercase: 3, neither: 2 }
console.log(letterCaseCount('123'));         // { lowercase: 0, uppercase: 0, neither: 3 }
console.log(letterCaseCount(''));            // { lowercase: 0, uppercase: 0, neither: 0 }




// function letterCaseCount(string) {
//   let lowercaseCount = 0;
//   let uppercaseCount = 0;
//   let neitherCount = 0;

//   for (let index = 0; index < string.length; index += 1) {
//     if (/[a-z]/.test(string[index])) {
//       lowercaseCount += 1;
//     } else if (/[A-Z]/.test(string[index])) {
//       uppercaseCount += 1;
//     } else {
//       neitherCount += 1;
//     }
//   }
//   return {
//     lowercase: lowercaseCount,
//     uppercase: uppercaseCount,
//     neither: neitherCount,
//   };
// }
