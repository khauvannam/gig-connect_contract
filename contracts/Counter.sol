// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

contract Counter {
    uint public x;

    event Increment(uint by);
    event Decrement(uint by);

    function inc() public {
        x++;
        emit Increment(1);
    }

    function incBy(uint by) public {
        require(by > 0, "incBy: increment should be positive");
        x += by;
        emit Increment(by);
    }

    function dec() public {
        require(x > 0, "dec: counter should be positive");
        x--;
        emit Decrement(1);
    }
}
