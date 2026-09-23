# Solidity Foundations: Storage, Factory, & Inheritance

## Overview
This repository contains a collection of foundational smart contracts built and deployed using Remix IDE. Developed as part of a rigorous self-directed study into Web3 architecture, this project demonstrates core EVM state manipulation, cross-contract composability using the Factory Pattern, and function overriding via inheritance.This repository represents the culmination of a week-long foundational study into Solidity, originally built, tested, and iterated upon within the Remix IDE before versioning.

## Technical Stack
* **Language:** Solidity (^0.8.34)
* **Environment:** Remix IDE
* **Core Concepts:** State variables, structs, mappings, factory pattern, contract inheritance, and the `virtual`/`override` framework.

## Contract Architecture

### 1. `SimpleStorage.sol`
A base contract that manages state variables.
* **Core Functionality:** Stores a favorite number and maps user addresses (via a `Person` struct array) to their specific numbers. 
* **Key Mechanics:** Demonstrates gas-efficient `view` functions and basic state modifications.

### 2. `StorageFactory.sol`
A factory contract that deploys and manages an array of `SimpleStorage` contracts.
* **Core Functionality:** Allows the user to deploy new `SimpleStorage` instances and interact with their state variables dynamically from a central hub.
* **Key Mechanics:** Demonstrates contract composability, cross-contract calls, and address management.

### 3. `AddFive.sol`
A contract that inherits from `SimpleStorage` to extend its functionality.
* **Core Functionality:** Overrides the base `store()` function to automatically add 5 to the user's input before storing it.
* **Key Mechanics:** Demonstrates Solidity inheritance and the strict use of `virtual` and `override` keywords.
