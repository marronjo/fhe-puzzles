// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {
    FHE,
    euint8,
    euint16,
    euint32,
    euint64,
    euint128,
    euint256
} from '@fhenixprotocol/contracts/FHE.sol';

import { Test } from "forge-std/src/Test.sol";

contract FheAssert is Test {

    function assertEq256(euint256 a, euint256 b) public pure {
        FHE.req(FHE.eq(a, b));
    }

    function assertEq128(euint128 a, euint128 b) public pure {
        FHE.req(FHE.eq(a, b));
    }

    function assertEq64(euint64 a, euint64 b) public pure {
        FHE.req(FHE.eq(a, b));
    }

    function assertEq32(euint32 a, euint32 b) public pure {
        FHE.req(FHE.eq(a, b));
    }

    function assertEq16(euint16 a, euint16 b) public pure {
        FHE.req(FHE.eq(a, b));
    }

    function assertEq8(euint8 a, euint8 b) public pure {
        FHE.req(FHE.eq(a, b));
    }
}