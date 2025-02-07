// Write a function that takes two element ids as arguments and swaps the positions of the elements represented by the ids. The function returns true for valid swaps and undefined for invalid. To put the focus on the node swapping functionality, you can assume that nodes will have a value for the id attribute and two arguments will always be provided.

// The current solution clones the nodes and uses the .replaceChild method to handle the swapping. The limitation of this approach, however, is that the nodes will lose all event listeners attached to it via JavaScript. For further exploration, refactor/implement a solution wherein the swapped nodes don't lose event listeners — if any — added via JavaScript.

function nodeSwap(id1, id2) {
  const node1 = document.getElementById(id1);
  const node2 = document.getElementById(id2);

  if (!node1 || !node2 || node1.contains(node2) || node2.contains(node1)) {
    return undefined;
  } else {
    const placeholder = document.createElement('div');
    node1.parentNode.insertBefore(placeholder, node1);
    node2.parentNode.insertBefore(node1, node2);
    placeholder.insertAdjacentElement('afterend', node2);
    placeholder.remove();
    return true;
  }
}

// at least one of the id attributes doesn't exist
nodeSwap(1, 20);
// undefined

// at least one of the nodes is a "child" of the other
nodeSwap(1, 4);
// undefined
nodeSwap(9, 3);
// undefined

nodeSwap(1, 2);

nodeSwap(3, 1);
nodeSwap(7, 9);
