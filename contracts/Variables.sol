// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Variables {
    // by default are 256 bits
    uint positiveNegativeNumbers = 10;
    int  positiveNumbers = 556;


    // Integers with a numbers negative and positives of bits defined 2^n
    uint8 number8Bits = 50;
    uint32  number32Bits = 5000;
    uint64 numbers64Bits = 500000;

   // Integers with a only positive numbers of bits 2^n
    uint8 numberPositive8Bits = 50;
    uint32  numberPositve32Bits = 5000;
    uint64 numbersPositve64Bits = 500000;

    // strings 

    string firstVariableString = "hello world";
    string emptyMessage;

    // booleans

    bool isValid = true;
    bool isNotValid = false;

    // contain 20 bytes
    address walletAddress;
}