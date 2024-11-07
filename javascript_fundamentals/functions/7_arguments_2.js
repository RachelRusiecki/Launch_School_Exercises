// What will the following code log to the console and why?

let a = 7;

function myValue(a) {
  a += 10;
}

myValue(a);
console.log(a);

// 7 b/c what happens inside function body has no effect on global variable, a is shadowed by parameter a in this case
