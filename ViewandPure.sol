//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ViewAndPure {
    uint256 x;
    uint256 y;
    address owner;

    function add() public view returns (uint256) {
        return x + y;
    }

    function check() public payable {
        msg.sender == owner ? "Owner Verified" : "Only Owner";
    }
}
