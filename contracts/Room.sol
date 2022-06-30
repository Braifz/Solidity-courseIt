//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

contract Room {
  struct Student {
    string name;
    string surname;
    bool isApproved;
    bool exists;
  }

  uint256 lastId;
  mapping(uint256 => Student) public students;

  function addStudent(string memory _name, string memory _surname) public {
    Student memory currentStudent;
    currentStudent.name = _name;
    currentStudent.surname = _surname;
    currentStudent.isApproved = false;
    currentStudent.exists = true;

    lastId+= 1;

    students[lastId] = currentStudent;
  }

  function findStudent(uint256 id) public view returns(Student memory){
    require(students[id].exists == true);
    return students[id];
  }
}

