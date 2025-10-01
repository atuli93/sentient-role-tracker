# Sentient Role Tracker (Solidity + Hardhat 3)

A modular smart contract that logs AGI role upgrades (Builder L1 → L2 → L3) along with metadata like Discord handle, GitHub repo, tweet URL, and timestamp. Built for remixability, leaderboard tracking, and Builder drops in Sentient Discord.

---

## Features

- Logs AGI role upgrades on-chain  
- Stores Discord, GitHub, tweet, role, and timestamp  
- Emits events for each upgrade  
- Fully tested with Hardhat 3 + Mocha  
- Remixable for quests, dashboards, and multi-agent tracking

---

## Project Structure
```bash
sentient-role-tracker/ 
├── contracts/ 
│ └── RoleTracker.sol 
├── scripts/ 
│ └── deploy.js 
├── test/ │ └── RoleTracker.test.ts 
├── hardhat.config.ts 
├── package.json
```

## Smart Contract Overview

```bash
solidity
function logRoleUpgrade(string discord, string github, string tweet, string role) public
```
Stores a new role upgrade entry for ```msg.sender.``` 
Retrievable via:
```bash
function getRoles(address user) public view returns (RoleEntry[] memory)
```

---

# Setup (WSL Compatible)
## 1. Clone the Repo
```bash
git clone https://github.com/atuli93/sentient-role-tracker.git
cd sentient-role-tracker
```

## 2. Install Dependencies
```bash
npm install --legacy-peer-deps
```

## 3. Compile Contracts
```bash
npx hardhat compile
```

## 4. Run Tests
```bash
npx hardhat test
```

# Sample Test Case
```bash
await tracker.logRoleUpgrade(
  "AtulChief.ink.base.eth",
  "https://github.com/atuli93/agi-agent",
  "https://x.com/Chief_atul/status/1973129215089275345",
  "Builder L1"
);
```

# License
## MIT License

# Notes
-Compatible with Hardhat 3 and ESM

-Tested on WSL (Ubuntu)

-Add ```.gitignore``` to exclude ```.env```, ```node_modules```, and ```artifacts```

-Extendable for multi-agent tracking or leaderboard logic


