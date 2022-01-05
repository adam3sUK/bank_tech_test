# bank_tech_test
The goal for this tech test was to allow a user to do 3 things: deposit an amount, withdraw an amount, and print a statement. Printing a statement would show the history of the users deposits and withdraws, with the changes to their total balance being reflected.
### Technologies and Design Principles:
The application has been built using Ruby, which was chosen because:
1. The requirements for this app was that it was to be used purely in the terminal so I forgoed any heavy frameworks.
2. Ruby is an easy to read coding language.

The app was built with a TDD approach throughout to ensure all parts were working as intended, testing was done using RSpec, with coverage examined using simplecov.

To keep the code clean rubocop has been used throughout, the code has also been refactored following passing tests to keep everything small. The single-responsibility principle has been used also to keep single class sizes to a minimal.

### To run locally:
`git clone git@github.com/adam3sUK/bank_tech_test.git`  
`bundle install`  
`irb`

### How to use the application:
1. One set up is complete and irb is running, a new instance of the Account class will need to be created e.g. 'account = Account.new'
2. A user will then be able to call 3 different methods
1. 'deposit' - This will add an amount to their balance.
2. 'withdraw' - This will subtract an amount from their balance.
3. 'print' - This will print a statement showing all previous deposits and withdraws method calls, with the time of the call and the balance afterwards.

### Testing:  
To run the tests:  
Type `rspec` into the terminal.
Simplecov will also create a local file `coverage/index.html` to view test coverage.

### Future extensions:
While all requirements have been met, I believe the applications would benefit from a few additional features:
1. Implementation of an 'overdraft' feature: currently a user is not capped on how much they can withdraw after passing 0. Ideally, the withdraw method should raise an error if the account balance attempts to go below a set threshold, e.g. '-2000.00'.
2. Print Statement limit: Currently the print method will print a history of all previous deposits and withdraws. A feature should be added to cap this to a set amount or up to a set date e.g. all deposits/withdraws in the last week.
