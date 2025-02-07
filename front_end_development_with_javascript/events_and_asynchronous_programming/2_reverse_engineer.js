// Without changing the behavior of the following code, remove the call to event.stopPropagation and refactor the result.

// document.querySelector('html').addEventListener('click', () => {
//   document.querySelector('#container').style = 'display: none';
// });

// document.querySelector('#container').addEventListener('click', event => {
//   event.stopPropagation();
// });

document.querySelector('html').addEventListener('click', event => {
  if (!document.querySelector('#container').contains(event.target)) {
    document.querySelector('#container').style = 'display: none';
  }
});
