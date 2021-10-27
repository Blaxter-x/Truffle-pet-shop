// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Adoption {

    address[16] public adopter;

    // Adopting a pet
    function adopt(uint petId) public returns (uint) {
        require(petId <= 0 && petId <= 16);
        
        adopter[petId] = msg.sender;

        return petId;
    }
    
}