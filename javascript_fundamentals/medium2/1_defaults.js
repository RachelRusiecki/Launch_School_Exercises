// The processOrder function shown below accepts the following arguments: price, quantity, discount, serviceCharge and tax. Any arguments other than price may be omitted when calling the function, in which case, default values will be assigned.

function processOrder(price, quantity, discount, serviceCharge, tax) {
  quantity = quantity || 1;
  discount = discount || 0;
  serviceCharge = serviceCharge || 0.1;
  tax = tax || 0.15;

  return (price * quantity) * (1 - discount) * (1 + serviceCharge) * (1 + tax);
}

console.log(processOrder(10, -10, -10));      // 126.5

// However, both of these solutions have a limitation that can lead to an incorrect result for certain inputs. What is this limitation and how does it affect the result?

// If any of the arguments happened to be 0, they would be reassigned b/c 0 is falsy
