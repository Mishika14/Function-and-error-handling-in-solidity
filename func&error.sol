//SPDX-License-Identifier: MIT

pragma solidity 0.8.18;
 
contract myToken{
   address public owner;
   uint256 public totalValue;
   uint public balance=100;
   constructor() {
        owner = msg.sender;
    }
    

   function setValue(uint256 newValue) public {
        // Ensure the new value is not negative
        require(newValue >10, "Value cannot be negative");
        
        totalValue += newValue;
    }
    function withdraw(uint256 amount) public {
        assert(msg.sender == owner);
        if(balance<amount){
            revert("Insufficient Balance for withdrawal");
        }
        balance-=amount;
    }

}
