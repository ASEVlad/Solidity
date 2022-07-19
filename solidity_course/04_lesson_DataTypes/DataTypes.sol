// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Demo {
    // Enum

    enum Status { Paid, Delivered, Received }

    Status public currentStatus;

    function pay() public {
        currentStatus = Status.Paid;
    }

    function delivered() public {
        currentStatus = Status.Delivered;
    }



    // Array
    uint[10] public items0;

    function setPartArray() public {
        items0[0] = 100;
        items0[1] = 200;
        items0[2] = 300;
    }

    uint[3][2] public items1;

    function setArray() public {
        items1 = [
            [3, 4, 5],
            [6, 7, 8]
        ];
    }

    uint[] public items2;
    uint public len;

    function pushElement(uint element) public {
        items2.push(element);
        len = items2.length;
    }
    
    // temporary array
    function sampleMemory() public view returns(uint[] memory){
        uint[] memory tempArray = new uint[](10);
        tempArray[0] = 1;
        return tempArray;
    }




    // Byte
    bytes32 public myVar = "test"; // from bytes1 to bytes32
    bytes public myDynVar = "test";
    bytes public myDynVarUni = unicode"тест";

    function getLenBytes() public view returns(uint) {
        return myDynVarUni.length;
    }



    // Struct
    struct Payment{
        uint amount;
        uint timestamp;
        address from;
        string message;
    }

    struct Balance {
        uint  totalPayments;
        mapping(uint => Payment) payments;
    }
    
    mapping(address => Balance) public balances;

    function pay(string memory message) public payable {
        uint paymentNum = balances[msg.sender].totalPayments;
        balances[msg.sender].totalPayments++;

        Payment memory newPayment = Payment(
            msg.value,
            block.timestamp,
            msg.sender,
            message
        );

        balances[msg.sender].payments[paymentNum] = newPayment;
    }

    function getPayment(address _addr, uint _index) public view returns(Payment memory){
        balances[_addr].payments[_index];

    }
}