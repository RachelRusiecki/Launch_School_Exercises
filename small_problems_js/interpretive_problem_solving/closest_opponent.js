/*

Write a function that returns the position of the closest active opponent. If two opponents are equidistant, return the opponent with the higher position on the board.

---- PROBLEM ----

Input: 2 args, 1 object represting positions, 1 numberrepresenting position
Output: closest position to given arg or greater if tie

Rules:
- Always will be 1 object & 1 number
- If value is not a number, non active
- Objects can be empty, return null
- Both values & args will always be positive integers
- Numbers can be 0
- If all opponents are null, return null
- Opponents can share same value
- Just return one number

---- DATA STRUCTURES ----

- Array of value

---- ALGORITHM ----

- Create array of object values
  - Create array of values (numbers & null)

- Check for null values
  - Filter out any elements that are null
  - If length of array is 0, return null

- Set distance variable to input - first index of values (absolute value)
  - Initialize new variable

- Set result variable to first index of values

- Iterate through values to find element w/ smallest distance
  - Subtract input number from current element
  - Find absolute value
  - If shortest distance is <= distance of current element
      - if (distance is the same, reassign only if new element is higher)
      - it current element is > result
    -Set value to shortest distance variable to current distance
    - Set result variable to current value

- Return that element

*/

function findClosestOpponent(positions, position) {
  let values = Object.values(positions).filter(value => {
    return value !== null;
  });

  if (values.length === 0) return null;

  let shortestDistance = Math.abs(position - values[0]);
  let result = values[0];

  values.forEach(value => {
    let distance = Math.abs(position - value);
    if (distance < shortestDistance) {
      shortestDistance = distance;
      result = value;
    } else if (distance === shortestDistance) {
      if (value > result) {
        result = value;
      }
    }
  });

  return result;
}

console.log(findClosestOpponent({
  "Opponent 1" : 1,
  "Opponent 2" : 15,
  "Opponent 3" : 37
}, 10)); // 15

console.log(findClosestOpponent({
  "Opponent 1a" : 1,
  "Opponent 1b" : 5
}, 3)); // 5

console.log(findClosestOpponent({
  "Opponent 1a" : 1, "Opponent 1b" : 5,
  "Opponent 1c" : 50, "Opponent 1d" : 100, "Opponent 1e" : null
}, 150)); // 100

console.log(findClosestOpponent({}, 10)); // null

console.log(findClosestOpponent({
  "Opponent 1" : 1,
  "Opponent 2" : 15,
  "Opponent 3" : 37
}, 0)); // 1

console.log(findClosestOpponent({
  "Opponent 1" : null,
  "Opponent 2" : null,
  "Opponent 3" : null,
}, 10)); // null

console.log(findClosestOpponent({
  "Opponent 1" : 1,
  "Opponent 2" : 15,
  "Opponent 3" : 37,
  "Opponent 4" : 15,
}, 10)); // 15

console.log(findClosestOpponent({
  "Opponent 1" : 1
}, 10)); // 1

console.log(findClosestOpponent({}, 74)); // null

console.log(findClosestOpponent({
  "Atlas" : 1,
  "Luna" : 15,
  "" : 37
}, 10)); // 15

console.log(findClosestOpponent({
  "Opponent 1a" : null, "Opponent 1b" : 5, "Opponent 1c" : null,
  "Opponent 1d" : null, "Opponent 1e" : 200, "Opponent 1f" : 400
}, 300)); // 400

console.log(findClosestOpponent({
  "Opponent 1" : 47,
  "Opponent 2" : 15,
  "Opponent 3" : 1
}, 10)); // 15
