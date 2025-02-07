// Implement a function that tracks events on a web page by wrapping a callback function in a function that adds each event to a tracker object before invoking the callback. In other words, your function should take a callback function as an argument and return a new function that:

// Records the event, if the specific event hasn't been recorded before.
// Executes the original callback function.

// Assumptions

// Assume that the user clicks the elements in the following order: div#blue, div#red, div#orange, and div#green.

const tracker = {
  events: [],

  list() {
    return this.events.slice();
  },

  elements() {
    return this.events.map(({target}) => target);
  },

  clear() {
    this.events = [];
    return this.events.length;
  },
};

function track(callback) {
  return event => {
    if (!tracker.list().includes(event)) tracker.events.push(event);
    callback(event);
  };
}

const divRed = document.querySelector('#red');
const divBlue = document.querySelector('#blue');
const divOrange = document.querySelector('#orange');
const divGreen = document.querySelector('#green');

// Use the "click" event listeners for the four elements:

divRed.addEventListener('click', track(event => {
  document.body.style.background = 'red';
}));

divBlue.addEventListener('click', track(event => {
  event.stopPropagation();
  document.body.style.background = 'blue';
}));

divOrange.addEventListener('click', track(event => {
  document.body.style.background = 'orange';
}));

divGreen.addEventListener('click', track(event => {
  document.body.style.background = 'green';
}));
