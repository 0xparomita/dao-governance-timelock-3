# DAO Governance & Timelock

A battle-tested, professional-grade DAO framework using OpenZeppelin's Governor standards. This repository provides a complete on-chain voting system where token holders can propose, vote on, and execute protocol changes.

## Features
- **Voting Power**: Proportional to token holdings (ERC20Votes).
- **Proposal Lifecycle**: Proposal -> Voting Period -> Queued in Timelock -> Execution.
- **Timelock Security**: Adds a mandatory delay between vote success and execution to prevent malicious "flash governance" attacks.
- **Flat Structure**: All contracts and configuration files are located in the root for easy deployment.



## Setup
1. Deploy `GovernanceToken.sol`.
2. Deploy `Timelock.sol` with a minimum delay (e.g., 2 days).
3. Deploy `MyGovernor.sol` pointing to the token and timelock.
4. Set the Governor contract as the Proposer in the Timelock.

## License
MIT
