// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/console.sol";

contract GaussCDF {

    int256 public constant SQRT_TWO  = 14142135623730951e2; // sqrt(2)*1e18
    int256 public immutable PRECISION;

    constructor(int256 _precision) {
        PRECISION = _precision;
    }


    // cdf function based on github.com/errcw/gaussian
    function cdf(int256 x, int256 mu, uint256 sigma) external view returns (int256) {
        // since sigma is a uint, != 0 means > 0
        require(sigma <= 1e19 && sigma != 0, "Std has to be 0 < std <= 1e19");
        require(-1e20 <= mu && mu <= 1e20, "Mean has to be -1e20 <= mu <= 1e20");
        require(-1e23 <= x && x <= 1e23, "X has to be in [-1e23, 1e23] range");

        // cdf = error function (-(x-mu)/(sigma*sqrt(2))) * 0.5
        return erfc(-(x-mu)*1e36/int(sigma)/SQRT_TWO) / 2;
    }

    // error function based on github.com/errcw/gaussian
    function erfc(int256 x) public view returns(int256) {
        // z = |x|
        int z = abs(x);
        // t = 1 / (1 + z / 2) = 1/ ((2+z)/2) = 1*2/(2+z) - to prevent underflow
        int t = 1e18 * 2e18 / (2e18 + z);
        // evaluates the power of e that we need for errcw/gaussian method (divides by 1e18 to prevent overflow)
        int factor = -z * z/1e18 - 126551223e10 + t * (100002368e10 +
            t * (37409196e10 + t * (9678418e10 + t * (-18628806e10 +
            t * (27886807e10 + t * (-113520398e10 + t * (148851587e10 +
            t * (-82215223e10 + t * 17087277e10/1e18)/1e18)/1e18)/1e18)/1e18)/1e18)/1e18)/1e18)/1e18;

        // approximate e^factor using taylor expansion
        int e_power = exp(factor);

        // finish the calculation
        int erfc_result = t * e_power / 1e18;

        return x >= 0 ? erfc_result : 2e18 - erfc_result;
    }
   
    // e^x = 1 + x + x^2/2! + x^3/3!... - taylor expansion for e^x function
    function exp(int256 x) internal view returns (int256) {
        // e^x is neglectibly small case (e^-40 = 4.248354255291589e-18)
        if (x < -40e18) return 0;
        
        // initialize e^x with 1, so that all the polynomials are in the while loop, and e^0 = 1 (since we won't enter the loop)
        int e_power = 1e18;

        // tracks the polynomial term index we are at
        int taylor_term_num = 1;
        // initialize the first polynomial to see if we need to go to the loop
        int taylor_polynomial = x;

        // loop until precision 1e8 (optionally limit the number of loops to 50)
        while (abs(taylor_polynomial) > PRECISION){//} && taylor_term_num <= 50) {
            
            e_power += taylor_polynomial;
            taylor_term_num++;

            // evaluate next taylor polynomial term
            taylor_polynomial = taylor_polynomial*x/taylor_term_num/1e18;
            
        }

        return e_power;
    }

    function abs(int x) internal pure returns(int) {
        return x >= 0 ? x : -x;
    }

}

