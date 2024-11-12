// Create a simple madlib program that prompts for a noun, a verb, an adverb, and an adjective, and injects them into a story that you create.

let rlSync = require ('readline-sync');
let noun = rlSync.question('Enter a noun: ');
let verb = rlSync.question('Enter a verb: ');
let adj = rlSync.question('Enter an adjective: ');
let adverb = rlSync.question('Enter an adverb: ');

console.log(`Do you ${verb} your ${adj} ${noun} ${adverb}? That's hilarious!`);
console.log(`The ${adj} ${noun} ${verb}s ${adverb} over the lazy dog.`);
console.log(`The ${noun} ${adverb} ${verb}s up ${adj} Joe's turtle.`);
