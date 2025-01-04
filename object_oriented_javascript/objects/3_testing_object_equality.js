/*

In JavaScript, comparing two objects either with == or === checks for object identity. In other words, the comparison evaluates as true if it's the same object on either side of == or ===. This is a limitation, in a sense, because sometimes we need to check if two objects have the same key/value pairs. JavaScript doesn't give us a way to do that.

Write a function objectsEqual that accepts two object arguments and returns true or false depending on whether the objects have the same key/value pairs.

*/

function objectsEqual(object1, object2) {
  if (object1 === object2) return true;

  let keys1 = Object.keys(object1).sort();
  let keys2 = Object.keys(object2).sort();

  if (keys1.length !== keys2.length) return false;

  for (let index = 0; index < keys1.length; index += 1) {
    if (typeof object1[keys1[index]] === 'object') {
      return objectsEqual(object1[keys1[index]], object2[keys2[index]]);
    }

    if (keys1[index] !== keys2[index] ||
        object1[keys1[index]] !== object2[keys2[index]]) {
          return false;
    }
  }

  return true;
}

console.log(objectsEqual({a: 'foo'}, {a: 'foo'}));                      // true
console.log(objectsEqual({a: 'foo', b: 'bar'}, {a: 'foo'}));            // false
console.log(objectsEqual({a: 'foo', b: 'bar'}, {b: "bar", a: 'foo'}));  // true
console.log(objectsEqual({}, {}));                                      // true
console.log(objectsEqual({a: 'foo', b: undefined}, {a: 'foo', c: 1}));  // false
console.log(objectsEqual({a: {a: 'foo', b: 'bar'}}, {a: {a: 'foo', b: 'bar'}}));              // true
