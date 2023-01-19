// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Caller {

    function callContract(address _contract, uint256 _num) external returns(bytes memory result) {
        (bool success, bytes memory ret)= _contract.call(abi.encodeWithSignature("foo(uint256)", _num));
        require(success, "Not success!");
        result = ret;
    }
}