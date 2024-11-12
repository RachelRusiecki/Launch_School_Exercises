// Write a function that will take a short line of text, and write it to the console log within a box.

// function logInBox(str) {
//   console.log(`+-${'-'.repeat(str.length)}-+`);
//   console.log(`| ${' '.repeat(str.length)} |`);
//   console.log(`| ${str} |`);
//   console.log(`| ${' '.repeat(str.length)} |`);
//   console.log(`+-${'-'.repeat(str.length)}-+`);
// }

// logInBox('To boldly go where no one has gone before.');
// logInBox('');

// Modify this function so that it truncates the message if it doesn't fit inside a maximum width provided as a second argument (the width is the width of the box itself). You may assume no maximum if the second argument is omitted. For a real challenge, try word wrapping messages that are too long to fit, so that they appear on multiple lines but are still contained within the box.

function logInBox(str, maxWidth) {
  if (maxWidth === undefined || str.length <= maxWidth - 4) {
    console.log(`+-${'-'.repeat(str.length)}-+`);
    console.log(`| ${' '.repeat(str.length)} |`);
    console.log(`| ${str} |`);
    console.log(`| ${' '.repeat(str.length)} |`);
    console.log(`+-${'-'.repeat(str.length)}-+`);
  } else {
    console.log(`+${'-'.repeat(maxWidth - 2)}+`);
    console.log(`|${' '.repeat(maxWidth - 2)}|`);

    let words = str.split(' ');
    let line = '';
    words.forEach(word => {
      if (`${line} ${word}`.length <= maxWidth - 4) {
        line += line ? ` ${word}` : word;
      } else {
        console.log(`| ${line}${' '.repeat(maxWidth - 4 - line.length)} |`);
        line = word;
      }
    });

    if (line) {
      console.log(`| ${line}${' '.repeat(maxWidth - 4 - line.length)} |`);
    }

    console.log(`|${' '.repeat(maxWidth - 2)}|`);
    console.log(`+${'-'.repeat(maxWidth - 2)}+`);
  }
}

logInBox('To boldly go where no one has gone before.');
logInBox('To boldly go where no one has gone before.', 20);
logInBox('');
logInBox('abc', 20);
