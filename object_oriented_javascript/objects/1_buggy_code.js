/*

The code below is expected to output the following when run:

> const helloVictor = createGreeter('Victor');
> helloVictor.greet('morning');
= Good Morning Victor

*/

function createGreeter(name) {
  return {
    name,
    morning: 'Good Morning',
    afternoon: 'Good Afternoon',
    evening: 'Good Evening',
    greet(timeOfDay) {
      let msg = '';
      switch (timeOfDay) {
        case 'morning':
          msg += `${this.morning} ${name}`; // Added this keyword
          break;
        case 'afternoon':
          msg += `${this.afternoon} ${name}`; // Added this keyword
          break;
        case 'evening':
          msg += `${this.evening} ${name}`; // Added this keyword
          break;
      }

      console.log(msg);
    },
  };
}

const helloVictor = createGreeter('Victor');
helloVictor.greet('morning');
