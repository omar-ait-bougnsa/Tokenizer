# Deployment guide

How to deploy the token on the BNB Smart Chain Testnet.
No real money is needed. Never share or commit your private key or seed phrase.

## Requirements

- **MetaMask** browser extension: https://metamask.io
- **Remix IDE** (online): https://app.remix.live
- A little **tBNB** (free test BNB) for the gas fee
- The contract: `code/Token.sol`

## 1. Add BSC Testnet to MetaMask

MetaMask → **Networks → Add a custom network**:

| Field | Value |
|---|---|
| Network name | BNB Smart Chain Testnet |
| RPC URL | `https://data-seed-prebsc-1-s1.bnbchain.org:8545` |
| Chain ID | `97` |
| Currency symbol | `tBNB` |
| Block explorer | `https://testnet.bscscan.com` |

## 2. Get free tBNB

Message the BNB Chain Telegram bot `@bnbchain_official_bot`:
```
I would like to get tBNB to my wallet 0xYOUR_ADDRESS
```

## 3. Compile

1. In Remix, create `Token.sol` and paste the code from `code/token.sol`.
2. In the **Solidity Compiler** tab, select the version matching the `pragma`.
3. Click **Compile**.

## 4. Deploy

1. In the **Deploy & Run Transactions** tab, set **Environment** to **Browser Extension → MetaMask**.
2. Check that the network badge shows **97** (BNB Smart Chain Testnet).
3. Select the contract and click **Deploy**.
4. Click **Confirm** in MetaMask.
5. Copy the contract address from **Deployed Contracts**.

## 5. Check

In Remix, under **Deployed Contracts**, call `name`, `symbol` and `totalSupply`.
Then open the contract address on https://testnet.bscscan.com.

## 6. Verify on BscScan

1. In Remix, right-click `oken.sol` → **Flatten**.
2. On BscScan, open the contract → **Contract** → **Verify and Publish**.
3. Choose **Solidity (Single file)** and the **same compiler version and optimization** as in Remix.
4. Paste the flattened code and submit.

## Result

| | |
|---|---|
| Network | BNB Smart Chain Testnet (Chain ID 97) |
| Contract address | `0x36688e19a4b4f4decdf568fda989e657ab45eff6` |
| Explorer | https://testnet.bscscan.com/address/0x36688e19a4b4f4decdf568fda989e657ab45eff6 |