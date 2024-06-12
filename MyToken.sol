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
