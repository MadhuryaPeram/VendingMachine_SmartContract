# VENDING MACHINE Smart Contract
## Introduction

This project consists of a Solidity smart contract that simulates a vending machine on the Ethereum blockchain. The smart contract provides functionality for restocking items, allowing users to purchase items, and checking the contract's balance. This README provides an overview of the project, instructions for usage, and explanations of the contract's functions.

## Ethereum Blockchain

Ethereum is a decentralized blockchain platform that enables the creation and execution of smart contracts and decentralized applications (DApps). Smart contracts are self-executing contracts with the terms of the agreement directly written into code. These contracts run on the Ethereum Virtual Machine (EVM), allowing for trustless and transparent execution without the need for intermediaries.

## VENDING MACHINE Smart Contract

The VENDING MACHINE smart contract is a simplified example of a vending machine on the Ethereum blockchain. It includes the following functions:

getVendingMachineBalance

The getVendingMachineBalance function is a read-only function that allows anyone to retrieve the current balance of donuts stored within the vending machine. It provides transparency regarding the availability of donuts in the vending machine. By querying the donutBalances mapping with the address of the vending machine contract, this function returns the total number of donuts currently held by the vending machine. This information is crucial for both users and the contract owner to verify the stock level of the vending machine.

restock

The restock function empowers the owner of the vending machine to replenish its stock of donuts. Only the designated owner address is authorized to execute this function. By supplying an amount parameter, the owner can increase the number of donuts available for purchase within the vending machine. This function enhances the utility of the vending machine by allowing the owner to maintain an adequate supply of donuts, ensuring that customers can always find items to purchase.

purchase

The purchase function enables users to buy a specified amount of donuts from the vending machine by sending the appropriate amount of Ether. To make a purchase, users must send at least twice the amount of Ether corresponding to the number of donuts they wish to buy. This mechanism ensures that each donut costs at least 2 ether. The function performs checks to validate if the user's payment is sufficient and if there are enough donuts available in the vending machine to fulfill the request. Upon successful validation, the function deducts the purchased amount of donuts from the vending machine's stock and adds an equivalent amount to the buyer's donut balance. This function provides a seamless and automated way for users to interact with the vending machine and acquire their desired donuts.

These functions collectively contribute to the functionality of the vending machine smart contract, enabling donut purchases, restocking, and monitoring of donut balances for both users and the contract owner.

## Usage

To use the VENDING MACHINE smart contract, follow these steps:

1. Deploy the smart contract to the Ethereum blockchain.
2. Call the `restock` function to initialize the inventory with items.
3. Users can call the `purchase` function to buy items by sending the appropriate amount of Ether.
4. Use the `getBalance` function to check the contract's balance.

## Security Considerations

- Ensure proper access control mechanisms to prevent unauthorized restocking or manipulation of the contract's inventory.
- Implement robust error handling to handle cases where purchases fail due to insufficient funds or unavailable items.
- Test the contract on Ethereum testnets before deploying to the mainnet to identify and fix potential issues.

## Disclaimer

This smart contract is provided as-is and should be used for educational and demonstration purposes only. Use caution when working with real Ether on the Ethereum blockchain and follow best practices for secure smart contract development.

## License

This project is licensed under the [MIT License](LICENSE).
