//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Vault {
  uint256 private totalSupply;
  
  function addSupply(uint256 amount) public {
    require(amount > 0, "Amount should be more than 0");
    totalSupply += amount;
  }

  function removeSupply(uint256 amount)  public {    
    require(amount > 0, "Amount should be more than 0");
    require(amount <= totalSupply, "Amount should not exceed totalSupply");
    totalSupply -= amount;
  }

  function getTotalSupply() public view returns (uint256) {
    return totalSupply;
  }
}

