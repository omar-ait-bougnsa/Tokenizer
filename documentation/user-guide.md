# User guide

How to use Token42 (TK42): add it to your wallet, check a balance and send tokens.

| | |
|---|---|
| Network | BNB Smart Chain Testnet (Chain ID 97) |
| Contract address | `0x36688e19a4b4f4decdf568fda989e657ab45eff6` |
| Explorer | https://testnet.bscscan.com/token/0x36688e19a4b4f4decdf568fda989e657ab45eff6 |

## What you need

- MetaMask with the **BNB Smart Chain Testnet** network
- A little **tBNB** to pay gas fees

## 1. Add the token to MetaMask

1. In MetaMask, select **BNB Smart Chain Testnet**.
2. **Tokens** tab → **⋮** → **Manage tokens** → **Import**.
3. Paste the contract address and click **Import**.

## 2. Check a balance

- **MetaMask**: the balance is shown in the **Tokens** tab.
- **BscScan**: - **BscScan**: open BscScan in browser and search the contract address
- **Remix**: call `balanceOf(address)`.

## 3. Send tokens (`transfer`)

1. In MetaMask, click **TK42** → **Send**.
2. Enter the receiver's address and the amount.
3. Click **Confirm**.

## 4. Let someone spend for you (`approve` + `transferFrom`)

1. **Account 1** calls `approve(Account 2, amount)`.
2. Check it with `allowance(Account 1, Account 2)`.
3. **Account 2** calls `transferFrom(Account 1, receiver, amount)`.

Account 2 can never spend more than the approved amount.

## 5. Use Remix

1. Open https://app.remix.live and compile `code/token.sol`.
2. **Deploy & Run** → Environment: **Browser Extension → MetaMask**.
3. Paste the contract address in **At Address** and click it.
4. Call the functions under **Deployed Contracts**.

In Remix, amounts are in base units: **1 TK42 = 1 followed by 18 zeros**.
Example: 100 TK42 = `100000000000000000000`.

## 6. What is not possible

- Sending more tokens than you have → the transaction fails.
- Spending more than the approved amount → the transaction fails.
- Creating new tokens → there is no mint function.