// SPDX-License-Identifier: MIT
 pragma solidity 0.8.18;

contract ErrorHandling{
  
  address public  owner= msg.sender;
  uint public  eth=28;
  //require
  function req(uint _x) public {
      eth+=_x;
      require(_x>2,"Does not have minimum eth required");
  }
  //revert
  function checkOwnership() public   {
      if(owner==msg.sender){
          revert("you are not the correct owner");
      }
      eth+=4;
  }
  //assert
  function CheckcurrentOwnership() public {
      assert(eth<34);
      eth+=2;
  }
}
