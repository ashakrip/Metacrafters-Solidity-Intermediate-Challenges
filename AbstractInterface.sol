// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

interface IAdd {
    function add() external view returns (uint256);

    function increase() external;
}

contract MyContract {
    function increaseCounter(address _count) external {
        IAdd(_count).increase();
    }

    function getCount(address _count) external view returns (uint256) {
        return IAdd(_count).add();
    }
}
