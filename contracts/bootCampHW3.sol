// SPDX-License-Identifier: MIT

pragma solidity 0.8.17;


contract BootCampHW3 {

        uint256 number;
        address owner;
        address returnVal = 0x000000000000000000000000000000000000dEaD;

        constructor() {
        owner = msg.sender;
        }

    function store(uint256 num) public {
        number = num;
    }

    function retrieve() public view returns (uint256){
        return number;
    }

    function onlyOwner() public view returns (address){
        if (msg.sender == deployer) {
            return returnVal;
        } else {
            return msg.sender;
        }
    }
}
