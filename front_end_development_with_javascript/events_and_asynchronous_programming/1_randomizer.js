// Write a randomizer function that accepts n callbacks and calls each callback at some random point in time between now and 2 * n seconds from now. For instance, if the caller provides 5 callbacks, the function should run them all sometime within 10 seconds.

// While running, randomizer should log the elapsed time every second: 1, 2, 3, ..., 2 * n.

function callback1() {
  console.log('callback1');
}

function callback2() {
  console.log('callback2');
}

function callback3() {
  console.log('callback3');
}

function randomizer(...callbacks) {
  if (callbacks.length < 1) return;
  let counter = 1;
  const countInterval = setInterval(() => {
    console.log(counter);
    counter += 1;
    if (counter > callbacks.length * 2) clearInterval(countInterval);
  }, 1000);

  callbacks.forEach(callback => {
    const seconds = Math.floor(Math.random() * ((callbacks.length * 2) + 1));
    setTimeout(callback, seconds * 1000);
  });
}

randomizer(callback1, callback2, callback3);

// Output:
// 1
// 2
// "callback2"
// 3
// "callback3"
// 4
// 5
// "callback1"
// 6
