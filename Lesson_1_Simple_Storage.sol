// SPDX-License-Identifier: MIT

pragma solidity ^0.6.0;

contract SimpleStorage {
    
    // определяем глобальные переменные, их изначальное значение = 0!
    uint256 favoriteNumber;
    bool favoriteBool;
    // определим структуру "People"("Люди"), элемент которой имеет имя и "любимый номер"
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    // определим public массив people
    People[] public people;
    mapping(string => uint256) public nameToFavoriteNumber;
    // функция сохраняющая "любимый номер"
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    // функция позволяющая узнать "любимый номер"
    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
    // функция добавляющая нового "человека" в "базу людей"(массив) people 
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }    
    
}
