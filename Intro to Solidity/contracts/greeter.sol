pragma solidity 0.4.19;


contract Greeter {
    string private greeting;

    function Greeter() public {
        greeting = "hello, World!";
    }
    
    function changeGreeting(string _newGreeting) public {
        greeting = _newGreeting;
    }

    function greet() public view returns (string) {
        return greeting;
    }
}
