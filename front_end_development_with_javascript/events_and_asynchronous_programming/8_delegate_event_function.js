// Implement a function named delegateEvent that delegates events to the descendant (inner) elements of a parent element that match a given selector. The function takes four arguments: parentElement, selector, eventType, and callback. It returns true if it was able to add an event listener and undefined if it wasn't. For example, if the parentElement is section and selector is p, the function should delegate events of eventType on the p element within section to the function callback; consequently, the function returns true.

// Assume that all event handlers listen during the bubbling phase.

// Notes on the scenarios:

// Each scenario is independent of the others.
// Assume that delegateEvent runs before the described scenario occurs.

function delegateEvent(parentElement, selector, eventType, callback) {
  if (parentElement && parentElement instanceof Element) {
    return !parentElement.addEventListener(eventType, event => {
      let validTargets = Array.from(parentElement.querySelectorAll(selector));
      if (validTargets.includes(event.target)) callback(event);
    });
  }
}

const element1 = document.querySelector('table');
const element2 = document.querySelector('main h1');
const element3 = document.querySelector('main');

const callback = ({target, currentTarget}) => {
  alert(`Target: ${target.tagName}\nCurrent Target: ${currentTarget.tagName}`);
};

delegateEvent(element1, 'p', 'click', callback);
// The function executes and returns undefined.
// It doesn't add an event listener to any elements.

delegateEvent(element2, 'p', 'click', callback);
// The function executes and returns true.
// It adds a click event listener to element2.
// If you click anywhere on the page, the callback function does not trigger.

delegateEvent(element2, 'h1', 'click', callback);
// The function executes and returns true.
// It adds a click event listener to element2.
// If you click anywhere on the page, the callback function does not trigger.

delegateEvent(element3, 'h1', 'click', callback);
// The function executes and returns true.
// It adds a click event listener to element3.
// If you click the h1 element that contains the text "Header," the callback function should trigger and display an alert message, e.g., 'Target: H1\nCurrent Target: MAIN'.
// If you click anywhere else, the callback function does not trigger.

delegateEvent(element3, 'aside p', 'click', callback);
// The function executes and returns true.
// It adds a click event listener to element3.
// If you click a p element that is a descendant of aside element inside main, the callback function should trigger and display an alert message, e.g., 'Target: P\nCurrent Target: MAIN'.
// If you click anywhere else, the callback function does not trigger.

delegateEvent(element2, 'p', 'click', callback);
// The function executes and returns true.
// It adds a click event listener to element2.
// If you click anywhere on the page, the callback function does not trigger.
// Run this code:

const newP = document.createElement('P');
const newContent = document.createTextNode('New Paragraph');
newP.appendChild(newContent);

element2.appendChild(newP);

// If you click the p element that contains the text "New Paragraph", the callback function should trigger and display an alert message, e.g., 'Target: P\nCurrent Target: H1'.
// If you click anywhere else, the callback function does not trigger.
