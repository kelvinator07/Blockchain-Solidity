// SPDX-License-Identifier: CC-BY-SA-4.0

pragma solidity >=0.7.0 <0.9.0;

contract Types {
    // string
    string name = "kelvin";

    // integers
    uint storedData = 34;

    // boolean
    bool atrueorfalsevalue = true;

    // address
    address walletAdress = 0x1234567890;

    // arrays
    string[] names;

    // bytes
    bytes32 code;

    // struct to define
    struct User {
        string firstName;
        string lastName;
    }

    // enums
    enum userType {buyer, seller}

    // mappings
    mapping(address => uint) public balances;
}
