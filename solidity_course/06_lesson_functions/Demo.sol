// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Demo {
    // public
    // external
    // internal
    // private

    // view
    // pure
    string message = "hello"; // state
    uint public balance;

    fallback() external payable{}
    receive() external payable{}

    function pay() external payable {
        balance += msg.value;
    } 

    function setMessage(string memory newMessage) public {
        message = newMessage;
    }

    // call
    function getBalance() public view returns(uint balance) {
        uint balance = address(this).balance;
        // return balance;
    }

    function getMesage() public view returns(string memory) {
        return message;
    }

    function rate(uint amount) public pure returns(uint) {
        return amount * 3;
    }
}