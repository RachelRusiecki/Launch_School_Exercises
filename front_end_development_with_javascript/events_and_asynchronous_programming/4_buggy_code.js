// The code below is buggy. The person who created the code expects that nothing will happen when the user clicks on the image. This, however, isn't the case; clicking the image still brings the user to another web page.

// Study the code and explain the bug.

document.querySelector('img').addEventListener('click', event => {
  // event.stopPropagation();
  event.preventDefault();
}, false);

// Use preventDefault instead of stopPropagation
