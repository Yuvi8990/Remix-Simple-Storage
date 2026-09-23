// SPDX-License-Identifier: MIT
pragma solidity ^0.8.34; 

contract SimpleStorage{
   uint256 public myFavoriteNumber; 
   
   struct Person{
        uint256 FavoriteNumber;
        string name;
   }
   
    Person[] public listOfPeople; 

    mapping(string => uint256) public nameToFavoriteNumber;

   function store(uint256 _FavoriteNumber) public virtual {
    myFavoriteNumber = _FavoriteNumber; 
   }

   function retrieve() public view returns(uint256){
        return myFavoriteNumber;
     }
   
   function addPerson(string memory _name, uint256 _FavoriteNumber) public {
        listOfPeople.push( Person(_FavoriteNumber, _name));
        nameToFavoriteNumber[_name] = _FavoriteNumber;
     }
}
