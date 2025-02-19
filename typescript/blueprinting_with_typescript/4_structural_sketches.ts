// Create two variables, computer and smartphone, using a type alias Device that requires manufacturer (string), model (string), and year (number). Demonstrate TypeScript's structural compatibility by creating a variable with a shape that has compatible properties with Device.

// Expected outcome:

// Demonstration of how TypeScript's structural typing system handles object shapes with compatible properties.

type Device = { manufacturer: string, model: string, year: number };

const computer: Device = {
  manufacturer: 'Microsoft',
  model: 'Surface Pro',
  year: 2024,
};

const smartphone: Device = {
  manufacturer: 'Google',
  model: 'Pixel',
  year: 2024,
};

const anotherSmartphone: Device = smartphone;

console.log(computer);
console.log(smartphone);
console.log(anotherSmartphone);
