// Write code that returns the number of direct and indirect child nodes for a given parent node as an array.

function walk(node, callback) {
  for (let index = 0; index < node.childNodes.length; index += 1) {
    walk(node.childNodes[index], callback);
  }

  callback();
}

function childNodes(id) {
  const node = document.getElementById(String(id));
  let totalCount = -1;

  walk(node, () => totalCount += 1);

  return[node.childNodes.length, totalCount - node.childNodes.length];
}
