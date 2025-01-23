// SPDX-License-Identifier: MIT
pragma solidity >=0.8.25 <0.9.0;

import { FheEnabled } from "../util/FheHelper.sol";
import { FheAssert } from "../util/FheAssert.sol";
import { Test } from "forge-std/src/Test.sol";

import { FHE, inEuint8, euint8 } from "@fhenixprotocol/contracts/FHE.sol";

import { Calculator } from "../src/1_calculator.sol";

contract CalculatorTest is Test, FheEnabled, FheAssert {
    Calculator calculator;

    function setUp() public virtual {
        initializeFhe();

        calculator = new Calculator();
    }

    function test1_puzzle1_add() public view {
        inEuint8 memory a = encrypt8(10);
        inEuint8 memory b = encrypt8(27);

        euint8 result = calculator.add(a, b);
        euint8 expected = FHE.asEuint8(10 + 27);
        assertEq8(expected, result);
    }
}