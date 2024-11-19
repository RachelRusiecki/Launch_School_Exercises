// Write a function that counts the number of occurrences of each element in a given array. Once counted, log each element alongside the number of occurrences.

function countOccurrences(array) {
  let counts = {};
  for (let element of array) counts[element] = (counts[element] + 1 || 1);
  for (let key in counts) console.log(`${key} => ${counts[key]}`);
}

const vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck',
                  'motorcycle', 'suv', 'motorcycle', 'car', 'truck'];

countOccurrences(vehicles);
