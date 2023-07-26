# Function-and-error-handling-in-solidity
Hello Folks, This is a simple program in Solidity to demonstrate error handling in contracts. We have demonstrated here the basic 3 keywords which are used to throw the error and perform certain actions and changes to the contract whenever an error occurs. These are:-
# Require:
   The require statement is used to check a condition and throw an exception if the condition is not me. 	The first parameter is the condition that you want to validate and the second parameter is the message that will be passed back to the caller if the condition fails. If the condition is satisfied, then the execution of the function continues and the execution jumps to the next statement. Here's the example for the required function.
	


```javascript
pragma solidity 0.8.18;
function req(uint _x) public {
      eth+=_x;
      require(_x>2,"Does not have minimum eth required");
  }}

```
#Revert:
Can be used to flag an error and revert the current call. You can also provide a message containing details about the error, and the message will be passed back to the caller.	Since the function execution stops after the revert() statement, the remaining gas is also returned back to the user. If you don't use the revert() statement and some error occurs, then the entire gas is lost. Using revert() does not return the consumed gas, however. The gas that is consumed is consumed, and it cannot be returned.
```javascript
pragma solidity 0.8.18;
 function checkOwnership() public   {
      if(owner==msg.sender){
          revert("you are not the correct owner");
      }
      eth+=4;
  }
```
#Assert:-
The assert function, like require, is a convenience function that checks for conditions. If a condition fails, then the function execution is terminated with an error message. assert() takes only one parameter as input. You pass a condition to assert(), and if the condition is true, then the function execution continues and the execution jumps to the next statement in the function.
```javascript
function CheckcurrentOwnership() public {
      assert(eth<34);
      eth+=2;
  }
```





