### README for MyToken Contract

## MyToken Contract

The `MyToken` contract is a straightforward Ethereum token implementation, allowing for minting and burning of tokens, and tracking balances.

### Token Details
- **Name:** Cars
- **Symbol:** CRS
- **Total Supply:** Starts at 0 and can be increased via minting.

### Contract Variables
- `name`: Public variable storing the token name.
- `symbol`: Public variable storing the token symbol.
- `totalSupply`: Public variable storing the total token supply.
- `balances`: Public mapping tracking each address's token balance.

### Functions

#### mint
```solidity
function mint(address adrs, uint value) public
```
Creates new tokens and assigns them to a specified address, increasing total supply and updating the balance.

- **Parameters:**
  - `adrs`: Address to receive new tokens.
  - `value`: Number of tokens to create.

#### burn
```solidity
function burn(address from, uint256 value) public
```
Destroys tokens from a specified address, decreasing total supply and updating the balance. Reverts if the balance is insufficient.

- **Parameters:**
  - `from`: Address from which tokens will be burned.
  - `value`: Number of tokens to burn.

### Example Interactions

1. **Minting Tokens:**
   ```solidity
   mint(0x123..., 100);
   ```
   Increases `totalSupply` by 100 and adds 100 to `0x123...`'s balance.

2. **Burning Tokens:**
   ```solidity
   burn(0x123..., 50);
   ```
   Decreases `totalSupply` by 50 and subtracts 50 from `0x123...`'s balance. Reverts if balance is insufficient.

### Notes
- Uses Solidity version `0.8.18` with built-in overflow and underflow protection.
- Ensure the interacting address has sufficient privileges and balance for minting and burning operations.
