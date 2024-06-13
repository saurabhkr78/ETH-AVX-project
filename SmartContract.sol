// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ErrorHandlingExample {
    address public owner;
    uint public data;

    constructor() {
        owner = msg.sender;
        data = 0;
    }

    function setData(uint _data) public {
        // Only the owner of the contract can set the data
        require(msg.sender == owner, "Only the contract owner can set the data");

        // Ensure data is within a valid range
        require(_data <= 100, "Data must be 100 or less");

        // Update data
        data = _data;
    }

    function assertExample(uint _value) public pure returns (uint) {
        // Assert statement example
        assert(_value >= 0);
        return _value;
    }

    function revertExample(uint _value) public pure returns (uint) {
        // Revert statement example
        if (_value == 0) {
            revert("Value cannot be zero");
        }
        return _value;
    }
}
