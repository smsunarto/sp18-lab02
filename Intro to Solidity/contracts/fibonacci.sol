pragma solidity 0.4.19;


contract Fibonacci {
    /* Carry out calculations to find the nth Fibonacci number */
    function fibRecur(uint n) public pure returns (uint) {
        if (n == 1 || n == 2) {
            return 1;
        }
        return fibRecur(n-1) + fibRecur(n-2);
    }

    /* Carry out calculations to find the nth Fibonacci number */
    function fibIter(uint n) public pure returns (uint) {
        uint previous = 1;
        uint current = 1;
        for (uint i = 3; i <= n; i++) {
            uint temp = current + previous;
            previous = current;
            current = temp;
        }
        return current;
    }
}
