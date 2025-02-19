// Create a generic function filterByType that filters an array based on the type provided. Use generics to return an array containing only elements of the given type.

function filterByType<T>(array: any[], type: string): T[] {
  return array.filter(value => typeof value === type);
}

console.log(filterByType<string>(["hello", "world", 42, true], "string"));
