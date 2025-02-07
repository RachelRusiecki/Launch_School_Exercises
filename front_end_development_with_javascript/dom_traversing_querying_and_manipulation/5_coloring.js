// Write a function that colors a specific generation of the DOM tree. A generation is a set of elements that are on the same level of indentation. We'll be using a "styled" HTML for this exercise to better visualize the generations. You may use the .generation-color class to color the specific generation. You can assume that only non-negative integers will be provided as arguments.

function colorGeneration(level) {
  let currentLevel = [document.body];
  let cousins;

  for (let counter = 0; counter < level; counter += 1) {
    cousins = currentLevel.map(({children}) => Array.from(children)).flat();
    currentLevel = cousins;
    cousins = [];
  }

  if (cousins) {
    currentLevel.forEach(({classList}) => classList.add('generation-color'));
  }
}

colorGeneration(0);
colorGeneration(1);
colorGeneration(3);
colorGeneration(4);
colorGeneration(7);
colorGeneration(8);
