//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

contract fallbackTest {
  uint num;
  function set(uint value) external {
    num = value;
  }

 fallback() external payable {
    num = 0;
  }
}

contract SendEth {
  function callfall(fall a) public returns(bool) {
      (bool success) = address(a).call(abi.encodeWithSignature("setter()"));
      require(success);

      address payable payableA = address(uint(address(a)));
      return(payableA.send(2 ether));
   }
}
