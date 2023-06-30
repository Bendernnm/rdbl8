// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContactBook {
    address[] private _contacts;

    function addContact(string memory name) public {
        Contact newContact = new Contact(name);
        _contacts.push(address(newContact));
    }

    function callContact(uint256 index) public view returns (string memory) {
        require(index < _contacts.length, "Invalid contact index");
        Contact contact = Contact(_contacts[index]);
        return contact.reply();
    }
}
