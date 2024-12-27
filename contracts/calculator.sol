// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract Hello {
    
    int256 public result = 0;
    uint256 N = 1e5;

    function factorial(int256 n) internal pure returns (int256) {
        int256 ans = 1;
        for (int256 i = 2; i <= n; i++) {
            ans *= i;
        }
        return ans;
    }

    function power(int256 n, int256 k) internal pure  returns (int256) {
        int256 ans = 1;
        for(int256 i = 1; i <= k; ++i){
            ans *= n;
        }
        return ans;
    }

    function sin(int256 n) public {
        int256 k = 1;
        int256 ans = 0;
        int neg = 1;
        for(uint256 i = 1; i <= N; ++i){
            ans += (neg*power(n, k))/factorial(k);
            neg = -neg;
            k += 2;
        }
        result = ans;
    }

    function cos(int256 n) public {
        int256 k = 0;
        int256 ans = 0;
        int neg = 1;
        for(uint256 i = 1; i <= N; ++i){
            ans += (neg*power(n, k))/factorial(k);
            neg = -neg;
            k += 2;
        }
        result = ans;
    }
    
    function add(int256 n) public {
        result += n;
    }
    function substract(int256 n) public  {
        result -= n;
    }
    function multiply(int256 n) public {
        result *= n;
    }
    function divide(int256 n) public {
        result /= n;
    }

    function get() public view returns (int256){
        return result;
    }
    
}