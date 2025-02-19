// Create an interface Car that represents a vehicle with properties make (string), model (string), and year (number). Then create an object myCar that implements this interface.

// Expected outcome:

// An interface Car used to type-check an object myCar.

interface Car { make: string, model: string, year: number };
const myCar: Car = { make: 'Hyundai', model: 'Accent', year: 2016 };
console.log(myCar);
