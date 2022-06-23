// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

contract Structs {
// client of web page example of struct
    struct client {
        uint id;
        string name;
        string email;
        uint phoneNumber;
        uint creditCard;
        uint secretCardNumber;
    }

// initialice variables of struct client
client firstClient = client(
    1,
    "israel", 
    "correo@correo.com",
    5532346542,
    234234234242,
    111
    );
//  example of any page of products
    struct products {
        uint id;
        string name;
        uint price;
    }
// initialice variables of struct products

  products firstProduct = products(
    1,
    "product_one",
    10
  );

}