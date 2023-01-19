// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ContactToCall {
    function foo(uint256 _num) external pure returns(bool result){
        if(_num > 10){
            return true;
        }
    }
}