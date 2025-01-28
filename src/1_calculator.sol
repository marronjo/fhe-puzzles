// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { FHE, inEuint8, euint8 } from "@fhenixprotocol/contracts/FHE.sol";

 /**
 * Implement these methods to make the tests pass
 * Ignore overflow, since FHE add wraps overflowing values
 * All values are using 8 bit lengths for simplicity
 *
 * Hint : you need to change the inEuints into euints before using
 */
contract Calculator {
    /**
     * Add the two inputs and return the value as an 8 bit euint (a + b)
     */
    function add(inEuint8 calldata a, inEuint8 calldata b) public pure returns (euint8) {
        // write your code here
    }

    /**
     * Subtract b from a and return the value as an 8 bit euint (a - b)
     */
    function sub(inEuint8 calldata a, inEuint8 calldata b) public pure returns (euint8) {
        // write your code here
    }

    /**
     * Multiply the two inputs and return the value as an 8 bit euint (a * b)
     */
    function mul(inEuint8 calldata a, inEuint8 calldata b) public pure returns (euint8) {
        // write your code here
    }

    /**
     * Divide input a by input b and return the value as an 8 bit euint (a / b)
     */
    function div(inEuint8 calldata a, inEuint8 calldata b) public pure returns (euint8) {
        // write your code here
    }
}