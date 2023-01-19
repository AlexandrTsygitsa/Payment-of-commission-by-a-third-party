// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract ContactToCall {
    mapping (address => uint256) numbers;

    function foo(address _addr, uint256 _num) external returns(uint256 _gasUsed){

        uint256 gasStart = gasleft();

        require(_num > 10, "Wrong number!");
        numbers[_addr] = _num;

        _gasUsed = (gasStart - gasleft()) + 23000;
    }
}