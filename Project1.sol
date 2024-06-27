// SPDX-License-Identifier: MIT 
pragma solidity 0.8.18;

contract ErrorHandling {
    uint256 public inputValue;

    function setValue(uint256 newValue) external {
        require(newValue > 3, "Input value must be greater than 3");

        if (newValue % 2 != 0) {
            revert("Odd numbers are not allowed");
        }
        inputValue = newValue;

        assert(inputValue % 2 == 0);
    }
}