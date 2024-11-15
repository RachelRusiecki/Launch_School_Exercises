// In the following code, a user creates a person object literal and defines two methods for returning the person's first and last names. What is the result when the user tries out the code on the last line?

const person = {
  firstName() {
    return 'Victor';
  },
  lastName() {
    return 'Reyes';
  },
};

console.log(`${person.firstName} ${person.lastName}`);

// prints the written out function because the functions were not actually called and s=so do not have any return value
