// Given the HTML below, write some JavaScript code that updates the options on one dropdown when the selection in the other dropdown changes. For instance, when the user chooses an option under Classifications, the items in the Animals dropdown should change accordingly. Use the lookup tables below to see which animals and classifications go together.

// Selection Change with Filter1: Animal Classifications

// Selection	  Animals Options
// Vertebrate	  Bear, Turtle, Whale, Salmon, Ostrich
// Warm-blooded	Bear, Whale, Ostrich
// Cold-blooded	Salmon, Turtle
// Mammal	      Bear, Whale
// Bird	        Ostrich

// Selection Change with Filter2: Animals

// Selection	Animal Classifications Options
// Bear	      Vertebrate, Warm-blooded, Mammal
// Turtle	    Vertebrate, Cold-blooded
// Whale	    Vertebrate, Warm-blooded, Mammal
// Salmon	    Vertebrate, Cold-blooded
// Ostrich	  Vertebrate, Warm-blooded, Bird

// When the user clicks the "Clear" button, the program should reset both dropdowns to their default values.

let animalClassifications = document.querySelector('#animal-classifications');
let animals = document.querySelector('#animals');
const linkedOptions = {
  classifications: {
    Vertebrate: ['Bear', 'Turtle', 'Whale', 'Salmon', 'Ostrich'],
    'Warm-blooded': ['Bear', 'Whale', 'Ostrich'],
    'Cold-blooded': ['Salmon', 'Turtle'],
    Mammal: ['Bear', 'Whale'],
    Bird: ['Ostrich'],
    Classifications: ['Animals', 'Bear', 'Turtle', 'Whale', 'Salmon',
                      'Ostrich'],
  },

  animals: {
    Bear: ['Vertebrate', 'Warm-blooded', 'Mammal'],
    Turtle: ['Vertebrate', 'Cold-blooded'],
    Whale: ['Vertebrate', 'Warm-blooded', 'Mammal'],
    Salmon: ['Vertebrate', 'Cold-blooded'],
    Ostrich: ['Vertebrate', 'Warm-blooded', 'Bird'],
    Animals: ['Classifications', 'Vertebrate', 'Warm-blooded', 'Cold-blooded',
              'Mammal', 'Bird'],
  },
};

animalClassifications.addEventListener('change', event => {
  animals.options.length = 0;
  const options = animalClassifications.options;
  const selectedIndex = animalClassifications.selectedIndex;
  const animalClassificationsValue = options[selectedIndex].value;
  const animalList = linkedOptions.classifications[animalClassificationsValue];
  animalList.forEach((value, index) => {
    animals.options[index] = new Option(value)
  });
});

animals.addEventListener('change', event => {
  animalClassifications.options.length = 0;
  const animalsValue = animals.options[animals.selectedIndex].value;
  linkedOptions.animals[animalsValue].forEach((value, index) => {
    animalClassifications.options[index] = new Option(value);
  });
});

document.querySelector('#clear').addEventListener('click', event => {
  event.preventDefault();
  animalClassifications.options.length = 0;
  linkedOptions.animals.Animals.forEach((value, index) => {
    animalClassifications.options[index] = new Option(value);
  });

  animals.options.length = 0;
  linkedOptions.classifications.Classifications.forEach((value, index) => {
    animals.options[index] = new Option(value);
  });
});
