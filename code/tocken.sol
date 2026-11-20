// SPDX-License-Identifier: MIT
pragma solidity 0.8.38;

// OpenZeppelin's ERC20 gives all the standard BEP-20 functions:
// name, symbol, decimals, totalSupply, balanceOf, transfer,
// approve, allowance and transferFrom.
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Token42 (TK42): a fixed-supply BEP-20 token for the 42 Tokenizer project.
// Security: no owner, no mint function, no pause.
// Nobody can create more tokens or take tokens from a holder.
contract Tocken42 is ERC20 {

    // Runs only once, at deployment.
    constructor() ERC20("Token42", "TK42") {
        // _mint creates 1,000,000 tokens and gives them to msg.sender (the deployer).
        // 10 ** decimals() converts tokens to base units (1 token = 10^18 units).
        _mint(msg.sender, 1000000 * 10 ** decimals());
    }
}