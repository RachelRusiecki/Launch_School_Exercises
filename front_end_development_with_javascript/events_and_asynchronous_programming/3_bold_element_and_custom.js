// Implement a function that makes an element bold and allows the user of the function to optionally do something else with it.

function makeBold(elem) {
  elem.style.fontWeight = 'bold';
  elem.dispatchEvent(new CustomEvent('bolded'));
}

let sectionElement = document.querySelector('section');
makeBold(sectionElement, function(elem) {
  elem.classList.add('highlight');
});

sectionElement.classList.contains('highlight');
// true
sectionElement.style.fontWeight;
// "bold"

// You can get the same behavior as the above solution by creating your own custom event. For this further exploration exercise, create your own CustomEvent called bolded that allows the user to add it as the type of event to listen to.

sectionElement.addEventListener('bolded', (event) => {
  alert(event.target.tagName);
  event.target.classList.add('highlight');
});

makeBold(sectionElement);
