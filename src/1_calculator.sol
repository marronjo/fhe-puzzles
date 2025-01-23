// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { FHE, inEuint8, euint8 } from "@fhenixprotocol/contracts/FHE.sol";

contract Calculator {
    /**
     * Implement this method to make the tests pass
     * Add the euints a and b together and return the result
     *
     * Hint : you need to change the inEuints into euints before adding
     */
    function add(inEuint8 calldata a, inEuint8 calldata b) public pure returns (euint8) {
        // write your code here
        return FHE.asEuint8(a) + FHE.asEuint8(b);
    }
}