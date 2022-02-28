// SPDX-License-Identifier: CC-BY-SA-4.0

pragma solidity >=0.7.0 <0.9.0;

contract Operators {
    // Aritmetic operators+ - * / % **
    uint a = 2;
    uint b = 3;

    uint c = a ** b;

    // Logical operators ! not , && and, or || , equal == , not equal !=
    bool hasMoney = !false;

    // Bitwise operators & | ^ >> <<
    bytes1 contractValue = 0x02 | 0x01;

}
