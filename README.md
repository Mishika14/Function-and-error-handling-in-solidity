# Welcome
To handle errors in solidity we use the following functions:-
# Require
It is commonly used to validate user inputs or check conditions that must be met for a function to execute correctly. It is generally used for inputs provided by users or external contracts, where you want to ensure certain conditions are met before proceeding with the function. Takes two parameters the second one is completely optional.
____________________________________________
SYNTAX: Require(condition,"error message");
Example: You have a TotalSupply of Tokens and You want to mint the tokens , So the number of minted tokens can only be positive, not negative to implement this we can write like this:
```javascript
require(newValue >= 0, "Value cannot be negative");
```
# Assert
It is used to find the internal errors in the code. Usually used when we want a certain condition to be true for every case. If the condition is found to be false then it reverts back making all state variables unchanged.
______________________________________
SYNTAX: Assert(Condition);
example: you want to check that only the owner of the account can access the following function.
```javascript
assert(onwer==msg.sender);
```
# Revert
It is used externally when we want to check certain conditions. If the conditions are met false then it reverts back to its initial state and refunds all the gas that is unused.
_____________________________________________________
Syntax: if(Condition){
Revert("error message");
}
Example:-
if you want to deduct the amount from the balance so it is necessary that the amount should be less then the balance limit.we can implement this as:
```javascript
if(amount>balance){
revert("Insufficient balance for transaction");
```

