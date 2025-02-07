// Given the HTML and CSS from the codepen, implement JS code that does the following:
// When the user clicks on a navigation link (Articles 1-4), the browser scrolls to that article in the <main> element and adds the highlight class to it. If another element already has the highlight class, the browser removes the class from that element.
// When the user clicks on an article element or any of its child elements, the browser adds the highlight class to it. If another element already has the highlight class, the browser removes the class from that element.
// When the user clicks anywhere else on the page, the browser adds the highlight class to the main element. If another element already has the highlight class, the browser removes the class from that element.

const articles = Array.from(document.querySelectorAll('article'));

document.querySelector('ul').addEventListener('click', event => {
  event.stopPropagation();
  const anchors = Array.from(document.querySelectorAll('a'));
  articles.forEach(article => article.classList.remove('highlight'));
  document.querySelector('main').classList.remove('highlight');
  articles[anchors.indexOf(event.target)].classList.add('highlight');
});

document.querySelector('main').addEventListener('click', event => {
  event.stopPropagation();
  if (event.target.tagName === 'H1') {
    highlightMain(event);
    return;
  }

  articles.forEach(article => {
    article.classList.remove('highlight');
    if (article.contains(event.target)) article.classList.add('highlight');
  });

  document.querySelector('main').classList.remove('highlight');
}, true);

function highlightMain(event) {
  event.stopPropagation();
  articles.forEach(article => article.classList.remove('highlight'));
  document.querySelector('main').classList.add('highlight');
}

document.body.addEventListener('click', highlightMain);
