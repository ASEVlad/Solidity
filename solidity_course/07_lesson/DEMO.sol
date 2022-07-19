// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Demo {
    // require
    // revert
    // assert
    address owner;
    address zeroAddr;

    event Paid(address indexed _from, uint _amount, uint _timestamp);

    constructor() {
        owner = msg.sender;
    }

    function pay() external payable {
        emit Paid(msg.sender, msg.value, block.timestamp);
    }

    function withdraw_require(address payable _to) external {
        require(msg.sender == owner, "you are not an owner");
        _to.transfer(address(this).balance);
    }

    function withdraw_revert(address payable _to) external {
        if(msg.sender != owner) {
            revert("you are not an owner");
        } else {
            _to.transfer(address(this).balance);
        }
    }

    function withdraw_assert(address payable _to) external {
        assert(msg.sender == owner);
    
        _to.transfer(address(this).balance);
    }

    modifier onlyOwner(address _to) {
        require(msg.sender == owner, "you are not an owner");
        require(_to != zeroAddr, "incorrect address");
        _; // quiting
        require(_to != 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, "you are not an owner, shit"); // works
        // require(...);
    }

    function withdraw_require_modifier(address payable _to) external onlyOwner(_to) {
        require(msg.sender == owner, "you are not an owner");
        _to.transfer(address(this).balance);
    }

}