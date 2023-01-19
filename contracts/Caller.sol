// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Caller {
    function callContract(address _contract, uint256 _num) external {
        (bool success,)= _contract.call(abi.encode(_num));
        require(success, "Not success!");
    }
}