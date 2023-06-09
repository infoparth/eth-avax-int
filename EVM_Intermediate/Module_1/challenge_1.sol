// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract myCont{

    address public owner;

    address[] public contri_names;
    
    modifier onlyOwner{

        require(msg.sender == owner, "You are not the owner");
        _;
    }

    constructor(){
        owner = msg.sender;
    }

    function addContributors(address _name) public onlyOwner{
        
        contri_names.push(_name);

    }

    function getNames() public view onlyOwner returns(address[] memory){

        return contri_names;

    }


}

