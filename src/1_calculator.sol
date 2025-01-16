// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import { FHE, inEuint8, euint8 } from "@fhenixprotocol/contracts/FHE.sol";

contract Calculator {

    function add(inEuint8 calldata a, inEuint8 calldata b) public pure returns(euint8) {
        euint8 _a = FHE.asEuint8(a);
        euint8 _b = FHE.asEuint8(b);

        return FHE.add(_a, _b);
    }
}