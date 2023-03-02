//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract MyContract {
    uint256 public x = 5;

    function checkData() public view returns (uint256) {
        return x + 1;
    }

    function pureData() public pure returns (uint256) {
        return 1;
    }
}
