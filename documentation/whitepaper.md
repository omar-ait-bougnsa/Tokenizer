# Whitepaper

## What is Token42?

Token42 (TK42) is a BEP-20 token on the BNB Smart Chain Testnet, created for the
42 Tokenizer project. It is a community token that 42 students can send to each
other, for example to thank someone for help or for a good evaluation.

It is on the testnet only and has no real value.

## Token details

| | |
|---|---|
| Name | Token42 |
| Ticker | TK42 |
| Standard | BEP-20 |
| Decimals | 18 |
| Total supply | 1,000,000 TK42 (fixed) |
| Contract address | `0x36688e19a4b4f4decdf568fda989e657ab45eff6` |

## How it works

The contract is written in Solidity and inherits from OpenZeppelin's `ERC20`:

```solidity
contract Tocken42 is ERC20 {
    constructor() ERC20("Token42", "TK42") {
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}
```

- `ERC20("Token42", "TK42")` sets the name and the ticker.
- `_mint` creates 1,000,000 tokens **once**, at deployment, and gives them to the deployer.
- `10 ** decimals()` converts tokens to base units (1 TK42 = 10^18 units),
  because the blockchain only stores whole numbers.

## Functions

These functions come from OpenZeppelin's `ERC20` contract, which our contract inherits.

| Function | What it does |
|---|---|
| `name()`, `symbol()`, `decimals()` | Token information |
| `totalSupply()` | Total number of tokens |
| `balanceOf(address)` | Balance of an address |
| `transfer(to, amount)` | Send your tokens |
| `approve(spender, amount)` | Allow someone to spend some of your tokens |
| `allowance(owner, spender)` | How much someone is still allowed to spend |
| `transferFrom(from, to, amount)` | Spend tokens you were allowed to spend |

Reading is free. Sending (`transfer`, `approve`, `transferFrom`) costs a small gas fee in tBNB.

## Security: ownership and privileges

The token has **no owner and no admin functions**:

- **No mint function**: nobody can create more tokens after deployment.
- **No pause or blacklist**: nobody can freeze a user.
- **Only the holder** (or someone they approved) can move their tokens.

The deployer starts with all the tokens but has no special power after that.

**Trade-off**: the supply can never be increased and the contract cannot be paused.