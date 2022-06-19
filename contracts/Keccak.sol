// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract Keccak {
    // calculate the computing of a string
    function calculateHash(string memory _chain) public pure  returns(bytes32)  {
        return keccak256(abi.encodePacked(_chain));
    }

    function calculateHashStringAddressUint(string memory _chain, uint _number, address _address )public pure returns(bytes32){
       return keccak256(abi.encodePacked(_chain, _number, _address));
    }
}