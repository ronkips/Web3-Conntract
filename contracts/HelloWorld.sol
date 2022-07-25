// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

// Import this file to use console.log
import "hardhat/console.sol";

contract HelloWorld{


     //Emitted when update function is called
   //Smart contract events are a way for your contract to communicate that something happened on the blockchain to your app front-end, which can be 'listening' for certain events and take action when they happen.
   event UpdatedMessages(string oldStr, string newStr);
   
   string public message;

   //constructor is used to initialized the contract data

   constructor(string memory initMessage) {

    // Accepts a string argument `initMessage` and sets the value into the contract's `message` storage variable
    
    message = initMessage;
   }

   //a public function that accepts a string argument and update the `message` storage variable.abi


   function update(string memory newMessage) public{
    string memory oldMsg = message;
    message = newMessage;
    emit UpdatedMessages(oldMsg, newMessage);
   }


}