// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract Time {
    // instance variables

    uint sec = 1 seconds;
    uint min = 1 minutes;
    uint hour = 1 hours;
    uint day = 1 days;
    uint week = 1 weeks;


    function oneMoreSecond() public view returns(uint){
        return sec + 1;
    }

    function oneMoreMinute() public view returns(uint){
        return min + 60 seconds;
    }

    function oneMoreHour() public view returns(uint){
        return hour + 1 hours;
    }

    function oneMoreDay() public view returns(uint){
        return day + 1 days;
    }

    function oneMoreWeek() public view returns(uint){
        return week + 1 weeks;
    }

    function compareStrings(string memory _firstString, string memory _secondString) public pure returns(bool) {
        bytes32 firstHash = keccak256(abi.encodePacked(_firstString));
        bytes32 secondHash = keccak256(abi.encodePacked(_secondString));
        if(firstHash != secondHash ) {
            return false;
        }
        return true;
    }
}