// Define a generic interface KeyValuePair with two types, Key and Value, and two properties: key of type Key and value of type Value. Then create an instance of KeyValuePair where key is a string and value is a number.

// Expected outcome:

// It should be a type-safe structure that can be inspected.

interface KeyValuePair<Key, Value> { key: Key, value: Value }

const pair: KeyValuePair<string, number> = { key: 'hello', value: 1 };
console.log(pair);
