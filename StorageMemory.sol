//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract StorageMemory {
    uint256 a;
    uint256 b;

    function test(uint256 c) external pure returns (uint256) {
        uint256 x = c * 2;
        return x;
    }
}
