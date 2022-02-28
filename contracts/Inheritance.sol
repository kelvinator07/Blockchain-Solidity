// SPDX-License-Identifier: CC-BY-SA-4.0

pragma solidity >=0.7.0 <0.9.0;

contract Inheritance {
    address owner;
    bool deceased;
    uint money;

    constructor() public payable {
        owner = msg.sender;
        money = msg.value;
        deceased = false;
    }

    modifier isOwner() {
        require(msg.sender == owner);
        _;
    }

    modifier isDeceased() {
        require(deceased == true);
        _;
    }

    address[] wallets;

    mapping(address => uint) inheritance;

    function setup(address _wallet, uint _inheritance) public isOwner {
        wallets.push(_wallet);
        inheritance[_wallet] = _inheritance;
    }

    function moneyPaid() private isDeceased{
        for (uint i = 0; i < wallets.length; i++) {
            payable(wallets[i]).transfer(inheritance[wallets[i]]);
        }
    }

    function died() public isOwner {
        deceased = true;
        moneyPaid();
    }
}
