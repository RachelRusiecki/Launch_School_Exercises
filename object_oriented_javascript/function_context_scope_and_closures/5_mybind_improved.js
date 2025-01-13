// Alter the myBind function written in the previous exercise to support partial function application of additional arguments to the original function.

function addNumbers(first, second) {
  return first + second;
}

function myBind(func, context, ...partialArgs) {
  return function(...args) {
    const fullArgs = partialArgs.concat(args);
    return func.apply(context, fullArgs);
  };
}

const addFive = myBind(addNumbers, null, 5);
console.log(addFive(10));
