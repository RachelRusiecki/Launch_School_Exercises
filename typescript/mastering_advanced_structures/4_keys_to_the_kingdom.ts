// Create a type representing all property names of the existing interface UserData. Then write a function that takes a UserData object and a key from UserData, and prints out the value of that key from the object.

// Expected outcome:

// The function should be able to take any key of UserData and print out the corresponding value.

interface UserData {
  name: string;
  age: number;
  email: string;
}

type PropertyNames = keyof UserData;

function printData(data: UserData, key: PropertyNames): void {
    console.log(data[key]);
}

const userData: UserData = {
  name: "Alice",
  age: 25,
  email: "alice@example.com",
};

printData(userData, "name");
// Output should be "Alice"
printData(userData, "age");
// Output should be 25
