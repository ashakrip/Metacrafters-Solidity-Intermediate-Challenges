// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Process {

    uint a;
    uint b;
    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner {
        require (owner == msg.sender, "Only owner can access")
        _;
    } 

    function see() public view onlyOwner returns (uint){
        return a, b;
    }
}