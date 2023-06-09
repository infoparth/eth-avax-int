// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract visibility{
    
    address  owner;
    

    constructor(){

       owner = msg.sender;
    }

    function pureOnly(uint _x, uint _y) public pure returns(uint){

        return _x + _y;

    }

    function viewOnly() public view returns (address){

        return owner;

    }

    function recieveEth() public payable {

        

    }
}