// SPDX-License-Identifier: CC-BY-SA-4.0

pragma solidity >=0.7.0 <0.9.0;

contract SpecialVariables {
    // blocks
    block.number;
    block.difficulty;
    block.coinbase();

    // message
    msg.sender;
    msg.value;
    msg.data;

    // transaction
    tx.origin;
}
