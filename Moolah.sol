//SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract ProjectMoolah is ERC20 {
    
    constructor(uint256 initialSupply) ERC20("Moolah", "MOOL") {
        _mint(msg.sender, initialSupply);
    }
    
}
