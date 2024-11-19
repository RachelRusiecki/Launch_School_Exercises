// Write a function that takes a string argument consisting of a first name, a space, and a last name, and returns a new string consisting of the last name, a comma, a space, and the first name.

function swapName(name) {
  return name.split(' ').reverse().join(', ');
}

console.log(swapName('Joe Roberts'));

// What if the person had more than one first name? Refactor the current solution so that it can accommodate this.

function swapNameRevised(name) {
  let lastName = name.split(' ')[name.split(' ').length - 1];
  let firstNames = name.split(' ').slice(0, -1);
  return `${lastName}, ${firstNames.join(' ')}`;
}

console.log(swapNameRevised('Rachel Anne Rusiecki'));
