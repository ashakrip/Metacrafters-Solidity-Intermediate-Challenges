// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract GlobalFunctions {
    address public sentBy;
    uint256 public trAmount;
    uint256 public totalAmount;

    error InsufficientFunds();
    event transferMade(address _sender, uint256 _amount, uint256 _gasleft);

    function addFunds() public payable {
        if (msg.value == 0) {
            revert InsufficientFunds();
        }

        totalAmount += msg.value;
        trAmount = msg.value;
        sentBy = msg.sender;

        emit transferMade(msg.sender, trAmount, gasleft());
    }
}
