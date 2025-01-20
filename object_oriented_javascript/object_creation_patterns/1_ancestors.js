// Implement an ancestors method that returns the prototype chain (ancestors) of a calling object as an array of object names.

const foo = {name: 'foo'};
const bar = Object.create(foo);
bar.name = 'bar';
const baz = Object.create(bar);
baz.name = 'baz';
const qux = Object.create(baz);
qux.name = 'qux';

foo.ancestors = function() {
  const chain = [];
  let currentAncestor = this;
  while (Object.getPrototypeOf(currentAncestor)) {
    if (Object.getPrototypeOf(currentAncestor).name) {
      chain.push(Object.getPrototypeOf(currentAncestor).name);
    } else {
      chain.push('Object.prototype');
    }

    currentAncestor = Object.getPrototypeOf(currentAncestor);
  }

  return chain;
}

// Recursive Solution

// Object.prototype.ancestors = function ancestors() {
//   const ancestor = Object.getPrototypeOf(this);

//   if (ancestor.hasOwnProperty('name')) {
//     return [ancestor.name].concat(ancestor.ancestors());
//   }

//   return ['Object.prototype'];
// };

console.log(qux.ancestors());  // returns ['baz', 'bar', 'foo', 'Object.prototype']
console.log(baz.ancestors());  // returns ['bar', 'foo', 'Object.prototype']
console.log(bar.ancestors());  // returns ['foo', 'Object.prototype']
console.log(foo.ancestors());  // returns ['Object.prototype']
