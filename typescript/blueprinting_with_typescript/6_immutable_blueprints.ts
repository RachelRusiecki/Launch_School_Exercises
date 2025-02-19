// Create an interface Account with properties username (string), email (string), and accountCreationDate (a string that cannot be changed after creation).

// Expected outcome:

// An interface Account where accountCreationDate cannot be modified.

interface Account {
  username: string,
  email: string,
  readonly accountCreationDate: string,
};

const account: Account = {
  username: 'rachel',
  email: 'rachel@email.com',
  accountCreationDate: '2/19/25',
};

account.accountCreationDate = '1/19/25'; // Cannot assign to 'accountCreationDate' because it is a read-only property.
