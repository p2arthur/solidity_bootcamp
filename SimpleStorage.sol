// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

contract FavoriteNumber {
    // The visibility internal means that we only have access to this variable from within the same contract - there are other types of visibility
    uint256 internal myFaveNumber;

    // Structs are used to define our own types in a solidity code
    struct Person {
        string name;
        uint256 faveNumber;
    }

    // We can create both dynamic and static arrays [] for dynamic [n] for static
    Person[] public friends;

    // We can create maps or hash tables to our contract
    mapping(string => uint256) public friendsMapping;

    // The constructor enables us to execute code when the contract is deployed
    constructor(uint256 _myFaveNumber) {
        myFaveNumber = _myFaveNumber;
    }

    // Memory means that the variable will only be alive during the excution of the given function
    function addFriend(string memory _name, uint256 _faveNumber) public {
        // Memory
        Person memory friendToAdd = Person({
            name: _name,
            faveNumber: _faveNumber
        });
        friends.push(friendToAdd);
        friendsMapping[friendToAdd.name] = friendToAdd.faveNumber;
    }
}
