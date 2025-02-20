// Define a discriminated union Shape that can be either a Circle with kind: "circle" and radius properties, or a Square with kind: "square" and sideLength properties. Then write a function getArea that calculates the area of the given shape.

type Circle = { kind: 'circle', radius: number };
type Square = { kind: 'square', sideLength: number };
type Shape = Circle | Square;

function getArea(shape: Shape): number {
  if (shape.kind === 'circle') {
    return Math.PI * shape.radius**2;
  } else {
    return shape.sideLength**2;
  }
}

console.log(getArea({ kind: "circle", radius: 10 }));
console.log(getArea({ kind: "square", sideLength: 10 }));
