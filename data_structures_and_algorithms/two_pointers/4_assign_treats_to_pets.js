/*

Imagine you're a pet owner wanting to give treats to your pets. Each pet has a specific appetite level represented by an array appetite[i], which is the minimum size of a treat the pet will be happy with. Each treat has a size represented by an array treats[j]. A pet will be satisfied if the size of the treat treats[j] is greater than or equal to its appetite level appetite[i]. Your goal is to maximize the number of satisfied pets and output the number of satisfied pets in the end.

*/

function assignTreats(appetites, treats) {
  appetites.sort((a, b) => a - b);
  treats.sort((a, b) => a - b);

  let appetite = 0;
  let treat = 0;
  let satisfiedPets = 0;

  while (appetite < appetites.length && treat < treats.length) {
    if (appetites[appetite] <= treats[treat]) {
      satisfiedPets += 1;
      appetite += 1;
    }

    treat += 1;
  }

  return satisfiedPets;
}

console.log(assignTreats([3, 4, 2], [1, 2, 3]) === 2);
console.log(assignTreats([1, 5], [5, 5, 6]) === 2);
console.log(assignTreats([1, 2, 3], [3]) === 1);
console.log(assignTreats([2], [1, 2, 1, 1]) === 1);
console.log(assignTreats([4, 3, 1], [2, 1, 3]) === 2);
console.log(assignTreats([1,2,3], [1,2,3]) === 3);
console.log(assignTreats([4, 5, 6], [1,2,3]) === 0);
