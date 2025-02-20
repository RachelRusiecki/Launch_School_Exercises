// Create two interfaces Dog with bark() and Cat with meow(). Make a new type Pet that is an intersection of Dog and Cat. Then instantiate a Pet object.

interface Dog { bark(): void; }
interface Cat { meow(): void; }
type Pet = Dog & Cat;

const pet: Pet = {
  bark: () => console.log('Woof'),
  meow: () => console.log('Meow'),
}

pet.bark();
pet.meow();
