// SPDX-License-Identifier: UNLICENSED
pragma solidity >= 0.5;
pragma experimental ABIEncoderV2;

contract StructContract {
  struct Person {
    string _firstName;
    string _lastName;
  }

  Person[] people;

  function addPerson(string memory _firstName, string memory _lastName) public {
    people.push(Person(_firstName, _lastName));
  }

  function getPeople(uint8 index) public view returns(Person memory) {
    return people[index];
  }

  function getPeople() public view returns(Person[] memory) {
    return people;
  }

}
