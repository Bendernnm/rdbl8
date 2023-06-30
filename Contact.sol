// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Contact {
    string private _name;

    constructor(string memory name) {
        _name = name;
    }

    function getName() public view returns (string memory) {
        return _name;
    }

    function reply() public view returns (string memory) {
        return string(abi.encodePacked(getName(), " on call!"));
    }
}
