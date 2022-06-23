// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;
contract Mappings {
    mapping (address => uint) public choseNumber;

    function setNumber(uint _number)  public{
        choseNumber[msg.sender] = _number; 
    }

    function choseNumberFunction() public view returns(uint) {
        return choseNumber[msg.sender];
    }

    struct Person {
        string name;
        uint age;
    }

    mapping(uint => Person) peoples;

    function personId(uint _number, string memory _name, uint _age ) public {
        peoples[_number] = Person(_name, _age);
    }

    function getPerson(uint _number) public view returns(Person memory){
       return  peoples[_number];
    }

}