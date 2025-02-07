// Implement a function that converts a nested array of nodeNames (see Nodes to Array exercise for examples) to nodes.

function arrayToNodes(nodes) {
  const parent = document.createElement(nodes[0].toLowerCase());
  if (nodes[1].length === 0) {
    return parent;
  } else {
    for (let index = 0; index < nodes[1].length; index += 1) {
      parent.appendChild(arrayToNodes(nodes[1][index]));
    }
  }

  return parent;
}

const nodes1 = ["BODY",[["HEADER",[]],["MAIN",[]],["FOOTER",[]]]];
arrayToNodes(nodes1);

{/* <body>
  <header></header>
  <main></main>
  <footer></footer>
</body> */}

const nodes2 = ["BODY",[["DIV",[["DIV",[]],["DIV",[["DIV",[]]]]]],["DIV",[]],["DIV",[["DIV",[]],["DIV",[]],["DIV",[]]]]]];
arrayToNodes(nodes2);

{/* <body>
  <div>
    <div></div>
    <div>
      <div></div>
    </div>
  </div>
  <div></div>
  <div>
    <div></div>
    <div></div>
    <div></div>
  </div>
</body> */}
