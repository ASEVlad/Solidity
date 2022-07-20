// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;


contract Op {
    //  //1
    // uint demo; 

    //  //2
    // uint128 a = 1;
    // uint128 b = 1;
    // uint256 c = 1;

    // // 3
    // bytes32 public hash = 0x9c22ff5f21f0b81b113e63f7db6da94fedef11b2119b4088b89664fb9a3cb658;

    // // 4
    // mapping(address => uint) payments;
    // function pay() external payable {
    //     require(msg.sender != address(0), "zero address");
    //     payments[msg.sender] = msg.value;
    // }

    // // 5
    // mapping(address => uint) payments;

    // // 6
    // uint[10] payments;

    // //  7
    // uint c = 5;
    // uint d;
    // function calc() public {
    //     uint a = 1 + c;
    //     uint b = 2 * c;
    //     d = a + b;
    // }

    // // 8
    // uint public result = 1;
    // function doWork(uint[] memory data) public {
    //     uint temp = 1;
    //     for(uint i = 0; i < data.length; i++) {
    //         temp *= data[i];
    //     }
    //     result = temp
    // }
}

contract Un {
    // // 1
    // uint demo = 0;
    
    // // 2
    // uint128 a = 1;
    // uint256 c = 1;
    // uint128 b = 1;

    // // 3
    // bytes32 public hash = keccak256(
    //     abi.encodePacked("test")
    // );

    // // 4
    // mapping(address => uint) payments;
    // function pay() external payable {
    //     address _from = msg.sender;
    //     require(_from != address(0), "zero address");
    //     payments[_from] = msg.value;
    // }

    // // 5
    // uint[] payments; // in 2 times more eth for deploying

    // // 6
    // uint[] payments;

    // //  7
    // uint c = 5;
    // uint d;
    // function calc() public {
    //     uint a = 1 + c;
    //     uint b = 2 * c;
    //     call(a, b);
    // }
    // function call(uint a, uint b) public {
    //     d = a + b;
    // }

    // 8
    uint public result = 1;
    function doWork(uint[] memory data) public {
        for(uint i = 0; i < data.length; i++) {
            result *= data[i];
        }
    }
}