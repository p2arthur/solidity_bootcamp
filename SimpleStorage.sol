// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {
    bool hasFavoriteNumber = true; // default: false
    uint256 private  favNumber = 88; // default: 0
    int256 favNegativeNumber = -88; //default: 0
    string favString = "Fav string"; //default: ""
    address managerAddress = 0x509e0153dd11b93B172eeA09F9765EeeD4F7ebf4;
    bytes32 favBytes32 = "cat";

    function store(uint64 _favNumber) public {
        favNumber = _favNumber; //change the value of the variable
    }

    function myFavNumber() public view returns (uint256){
        return favNumber;
    }

    function returnPure() public pure returns(uint256){
        return 7;
    }
}


