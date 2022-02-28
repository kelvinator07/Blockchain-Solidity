// SPDX-License-Identifier: CC-BY-SA-4.0

// import solidity
pragma solidity >=0.7.0 <0.9.0;

// import
import "filename";
import * as symbolname from "filename";
import { symbol1 as alias, symbol2 } from "filename";

contract Syntax {
    // state variable 
    uint storedData;

    // modifier is a conditional
    modifier isValidData() {
        require(storedData >= 0);
        _;
    }

    // functions
    function set(uint x) public {
        storedData = x;
    }

    // event
    event Sent(address from, address to, uint storedData);
}
