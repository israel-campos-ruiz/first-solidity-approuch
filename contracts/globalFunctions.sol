// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract GlobalFunctions{
 function messageSender()  public  view returns(address) {
   return msg.sender;
 }
 function blockCoinBase() public view returns(address){
    return block.coinbase;
 }   

 function dificulty() public view returns (uint){
    return block.difficulty;
 }

 function nowFunction() public view returns(uint){
    return block.timestamp;
 }

 function blockNumber() public view returns(uint){
    return block.number;
 }

 function messageSig() public pure returns(bytes4){
    return msg.sig;
 }




}