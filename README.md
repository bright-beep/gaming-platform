# Gaming Platform Smart Contract

A decentralized gaming platform built on Stacks blockchain that manages game assets (NFTs), player registration, leaderboard tracking, and reward distribution.

## Features

- **NFT Game Assets**: Mint and transfer unique in-game items
- **Player Management**: Registration and score tracking
- **Leaderboard System**: Track player performance
- **Reward Distribution**: Automated reward calculations based on player scores
- **Administrative Controls**: Secure admin management system

## Contract Components

### Game Assets (NFTs)

- Unique identifiers for in-game items
- Metadata storage including:
  - Name (max 50 characters)
  - Description (max 200 characters)
  - Rarity level
  - Power level (0-1000)

### Player System

- Registration with entry fee
- Score tracking
- Games played counter
- Total rewards earned
- Leaderboard position

### Administrative Features

- Admin whitelist system
- Game configuration management
- Asset minting controls
- Score update authorization

## Function Reference

### Administrative Functions

#### `add-game-admin`

- Adds a new administrator to the whitelist
- Requires existing admin authorization
- Parameters:
  - `new-admin`: Principal to be added as admin

#### `initialize-game`

- Sets up game parameters
- Parameters:
  - `entry-fee`: Cost to register (1-1000)
  - `max-entries`: Maximum leaderboard entries (1-500)

### Asset Management

#### `mint-game-asset`

- Creates new game NFT
- Parameters:
  - `name`: Asset name
  - `description`: Asset description
  - `rarity`: Rarity level
  - `power-level`: Power rating (0-1000)

#### `transfer-game-asset`

- Transfers NFT ownership
- Parameters:
  - `token-id`: Asset identifier
  - `recipient`: New owner's principal

### Player Management

#### `register-player`

- Registers new player
- Requires entry fee payment
- Initializes player statistics

#### `update-player-score`

- Updates player's score
- Parameters:
  - `player`: Player's principal
  - `new-score`: Updated score (0-10000)

### Reward System

#### `distribute-bitcoin-rewards`

- Distributes rewards to eligible players
- Automated calculation based on scores
- Minimum score requirement: 100
- Reward formula: score × 10

## Error Codes

| Code | Description        |
| ---- | ------------------ |
| u1   | Not authorized     |
| u2   | Invalid game asset |
| u3   | Insufficient funds |
| u4   | Transfer failed    |
| u5   | Leaderboard full   |
| u6   | Already registered |
| u7   | Invalid reward     |
| u8   | Invalid input      |
| u9   | Invalid score      |
| u10  | Invalid fee        |
| u11  | Invalid entries    |
| u12  | Player not found   |

## Security Features

### Access Control

- Role-based administration
- Secure principal validation
- Transaction authorization checks

### Asset Protection

- Ownership verification for transfers
- Safe principal validation
- Input validation for all operations

### Financial Safety

- Balance checks for transactions
- Secure reward distribution
- Protected prize pool management

## Best Practices

1. **Administrative Access**

   - Only authorized admins can perform privileged operations
   - Admin additions require existing admin approval

2. **Asset Management**

   - Verify ownership before transfers
   - Validate all metadata inputs
   - Maintain asset uniqueness

3. **Player Operations**

   - Validate registration requirements
   - Ensure score updates are authorized
   - Protect player statistics

4. **Reward Distribution**
   - Verify eligibility before rewards
   - Secure calculation process
   - Safe distribution mechanism

## Technical Specifications

- **Language**: Clarity
- **Platform**: Stacks Blockchain
- **Token Standard**: NFT
- **Storage**: Map-based data structure
- **Access Control**: Principal-based

## Implementation Notes

1. The contract uses map structures for efficient data storage
2. NFT implementation follows standard token patterns
3. Modular design allows for future expansions
4. Built-in safety checks prevent common vulnerabilities
5. Clear separation of administrative and user functions
