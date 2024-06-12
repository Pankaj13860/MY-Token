// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {
    // Public variables to store the details about the coin
    string public name = "Cars";
    string public symbol = "CRS";
    uint256 public totalSupply = 0;

    // Mapping of addresses to balances
    mapping(address => uint) public balances;

    // Mint function to create new tokens
    function mint(address adrs, uint value) public {
        totalSupply += value;
        balances[adrs] += value;
    }

    // Burn function to destroy tokens
    function burn(address from, uint256 value) public {
        if (balances[from] >= value) {
            totalSupply -= value;
            balances[from] -= value;
        } else {
            // Handle the case where the balance is insufficient
            // You can revert the transaction or take other actions
            revert("Insufficient balance to burn");
        }
    }
  }

Explanation:
The contract defines three public variables: tokenName, tokenAbbrv, and totalSupply, which store the name, abbreviation, and total supply of the token, respectively, and are public in nature. 
It also includes a balances mapping that associates addresses with their respective token balances. 
The mint function allows for the creation of new tokens, increasing both the total supply and the balance of a specified address by a given value. Conversely, the burn function, which employs an if-else structure, first verifies if the specified address has a sufficient balance to burn the desired amount of tokens.
If the balance is adequate, it decreases both the total supply and the balance of the address by the specified amount. If the balance is insufficient, the function halts execution and provides an error message using revert. 
This explanation offers a concise overview of the provided code.

AUTHOR : PANKAJ
