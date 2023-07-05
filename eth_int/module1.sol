// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

contract proj_1{

    address public owner;
    mapping (address => uint) public amount;

    constructor (){

        owner = msg.sender;

    }

    function contri() public payable{

        amount[msg.sender] += msg.value;
        if(msg.value <= 1000 wei){

            revert("The amount should be greater than 1000 Wei");
        }

         

    }

    function addMem(address _add) public payable{

        require(msg.sender ==  owner, "You can't add a member");

        amount[_add] += msg.value;

        assert (_add != address(0));

        
    }

    function changeOwner(address _new) public{

        require(msg.sender == owner, "You are not the Owner");
        owner = _new;

    }


}

// 0x0000000000000000000000000000000000000000