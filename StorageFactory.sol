//SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;

import{SimpleStorage} from "./SimpleStorage.sol"; 
contract StorageFactory{

  SimpleStorage[] public listOfSimpleStorageContracts;

  function createSimpleStorageContract() public{
        SimpleStorage newSimpleStorageContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContract);
  }

  function sfStore(uint256 _simpleStorageIndex, uint256 _newFavSimpleStorageNumber) public{
      listOfSimpleStorageContracts[_simpleStorageIndex].store(_newFavSimpleStorageNumber);
         }

  function sfGet(uint _simpleStorageIndex) public view returns(uint256){
      return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();  
  } 
}
