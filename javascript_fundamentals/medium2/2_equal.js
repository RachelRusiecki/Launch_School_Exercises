// Read through the following code. Currently, it does not log the expected result. Explain why this happens, then refactor the code so that it works as expected.

const person = { name: 'Victor' };
const otherPerson = person;

console.log(person === otherPerson);

// This returns false b/c objects must be referencing the exact same object to be considered equal with ===. To fix, assign otherPerson = person.
