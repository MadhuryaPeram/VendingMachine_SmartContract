//SPDX-License-Identifier: MIT 
pragma solidity ^0.8.11;

//address in solidity holds 20byte value of an ethereum address
contract VendingMachine{
    address public owner;
    mapping(address => uint) public donutBalances;

    constructor(){
        //msg is a special global variable
        owner = msg.sender; //sender is the ethereum add of the originator of the function call or transaction
        donutBalances[address(this)]=100; //address(this) gives the add of the current contract
    }

    //view means that this function is not going to modify any data on the blockchain but it can read data from the blockchain
    //pure means we are not modifying or reading
    function getVendingMachineBalance() public view returns (uint){ //uint to represent the number of donuts
        return donutBalances[address(this)]; //return from the donutBalances mapping the number of donuts associated with the add of this contract
    } 

    /*
    A "require statement" takes 2 arguments
    1) A condition that needs to be fulfilled
    2) Error msg if condition is not met
    */

    function restock(uint amount) public {
        require(msg.sender == owner,"Only the owner can restock this machine.");
        donutBalances[address(this)]+=amount; //we are adding new amount to the balance
    }

    //payable is used for any function which needs to reciever ether
    //if this key word is not present the transaction will be reverted
    function purchase(uint amount) public payable {
        require(msg.value >= amount * 2 ether,"You must pay at least 2 ether per donut");
        require(donutBalances[address(this)] >= amount,"Not enough donuts in stock to fulfill purchase request"); //we are checking the availability
        donutBalances[address(this)] -=amount; //when the purchase is being done the number of donuts in stock decrease and the donuts of the customer increase 
        donutBalances[msg.sender] +=amount;
    }

}
