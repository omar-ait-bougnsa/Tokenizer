# Token42 (TK42)

A BEP-20 token deployed on the BNB Smart Chain Testnet for the 42 Tokenizer project

## Token information

| | |
|---|---|
| Name | Token42 |
| Ticker | TK42 |
| Total supply | 1,000,000 TK42 |
| Network | BNB Smart Chain Testnet (Chain ID 97) |
| Contract address | `0x36688e19a4b4f4decdf568fda989e657ab45eff6` |
| Explorer | https://testnet.bscscan.com/address/0x36688e19a4b4f4decdf568fda989e657ab45eff6 |

## Choices and reasons

### Blockchain: BNB Smart Chain (BSC)
- The project is a partnership between 42 and BNB Chain.
- BSC is works with well known tools (Remix, MetaMask).
- Fees are very low and transactions are fast.

### Network: Testnet
- The testnet lets us deploy and test for free with tBNB.
- No real money is used.

### Standard: BEP-20
- BEP-20 is the official token standard on BSC (the same as ERC-20 on Ethereum).
- Following it means wallets and explorers (MetaMask, BscScan) recognize the token automatically.

### Language: Solidity
- Solidity is the main language for smart contracts on EVM blockchains like BSC.
- It has the most documentation and tools.

### Library: OpenZeppelin ERC20
- Our contract inherits from it, so it gets all the BEP-20 functions without rewriting them, which avoids bugs.

### Tools: Remix and MetaMask
- **Remix**: an online IDE to write, compile and deploy the contract, with no installation.
- **MetaMask**: a wallet that signs the deployment transaction and holds the tokens.

### Security: no owner
- The full supply is minted once to the deployer at creation.
- There is no owner, no mint function and no pause: nobody can create more tokens
  or take tokens from a holder.