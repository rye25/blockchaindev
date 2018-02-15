pragma solidity ^0.4.18;

contract Lab01 {
    
    function Lab01() public {
    } 
    
    function greet() public constant returns (string) {
        return "hello, World!";
    }
    
    function fibonnaci(uint num) public constant returns(uint) {
        if (num == 0) {
            return 0;
        }
        uint prev = 0;
        uint current = 1;
        for (uint i = 1; i < num; i++) {
            uint temp = current;
            current += prev;
            prev = temp;
        }
        return current;
    }
    
    function xor(uint x, uint y) public constant returns(uint) {
        if (x == y) {
            return 0;
        } else {
            return 1;
        }
    }
    
    function concatenate(string one, string two) public constant returns(string) {
        bytes memory newOne = bytes(one);
        bytes memory newTwo = bytes(two);
        bytes memory concat = new bytes(newOne.length + newTwo.length);
        for (uint i = 0; i < newOne.length; i++) {
            concat[i] = newOne[i];
        }
        for (uint j = newOne.length; j < concat.length; j++) {
            concat[j] = newTwo[j - newOne.length];
        }
        return string(concat);
    }
}