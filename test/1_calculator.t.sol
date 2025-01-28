// SPDX-License-Identifier: MIT
pragma solidity >=0.8.25 <0.9.0;

import { FheEnabled } from "../util/FheHelper.sol";
import { FheAssert } from "../util/FheAssert.sol";
import { Test } from "forge-std/src/Test.sol";

import { FHE, inEuint8, euint8 } from "@fhenixprotocol/contracts/FHE.sol";

import { Calculator } from "../src/1_calculator.sol";

/**
 * This class contains all of the testcases for the Calculator puzzle 1
 * The tests check if the required functionality has been implemented correctly
 */
contract CalculatorTest is Test, FheEnabled, FheAssert {
    Calculator calculator;

    uint8 max8;

    function setUp() public virtual {
        initializeFhe();
        max8 = type(uint8).max;
        calculator = new Calculator();
    }

    function test_puzzle1_add() public view {
        inEuint8 memory a = encrypt8(10);
        inEuint8 memory b = encrypt8(27);

        euint8 result = calculator.add(a, b);
        euint8 expected = FHE.asEuint8(10 + 27);

        // custom method for euint assertions
        encryptedEq8(expected, result);
    }

    function test_puzzle1_addFuzz(uint8 a, uint8 b) public view {
        // ensure addition does not overflow 
        vm.assume(max8 - a > b && max8 - b > a);

        inEuint8 memory _a = encrypt8(a);
        inEuint8 memory _b = encrypt8(b);

        euint8 result = calculator.add(_a, _b);
        euint8 expected = FHE.asEuint8(a + b);

        // custom method for euint assertions
        encryptedEq8(expected, result);
    }

    function test_puzzle1_sub() public view {
        inEuint8 memory a = encrypt8(100);
        inEuint8 memory b = encrypt8(50);

        euint8 result = calculator.sub(a, b);
        euint8 expected = FHE.asEuint8(100 - 50);

        // custom method for euint assertions
        encryptedEq8(expected, result);
    }

    function test_puzzle1_subFuzz(uint8 a, uint8 b) public view {
        // ensure subtraction does not underflow 
        vm.assume(a > b);

        inEuint8 memory _a = encrypt8(a);
        inEuint8 memory _b = encrypt8(b);

        euint8 result = calculator.sub(_a, _b);
        euint8 expected = FHE.asEuint8(a - b);

        // custom method for euint assertions
        encryptedEq8(expected, result);
    }

    function test_puzzle1_mul() public view {
        inEuint8 memory a = encrypt8(20);
        inEuint8 memory b = encrypt8(11);

        euint8 result = calculator.mul(a, b);
        euint8 expected = FHE.asEuint8(20 * 11);

        // custom method for euint assertions
        encryptedEq8(expected, result);
    }

    function test_puzzle1_mulFuzz(uint8 a, uint8 b) public view {
        // ensure multiplication does not overflow 
        vm.assume(a != 0 && max8 / a > b);

        inEuint8 memory _a = encrypt8(a);
        inEuint8 memory _b = encrypt8(b);

        euint8 result = calculator.mul(_a, _b);
        euint8 expected = FHE.asEuint8(a * b);

        // custom method for euint assertions
        encryptedEq8(expected, result);
    }

    function test_puzzle1_div() public view {
        inEuint8 memory a = encrypt8(255);
        inEuint8 memory b = encrypt8(5);

        euint8 result = calculator.div(a, b);
        euint8 expected = FHE.asEuint8(255 / 5);

        // custom method for euint assertions
        encryptedEq8(expected, result);
    }

    function test_puzzle1_divFuzz(uint8 a, uint8 b) public view {
        // ensure denominator is not 0
        vm.assume(b != 0);

        inEuint8 memory _a = encrypt8(a);
        inEuint8 memory _b = encrypt8(b);

        euint8 result = calculator.div(_a, _b);
        euint8 expected = FHE.asEuint8(a / b);

        // custom method for euint assertions
        encryptedEq8(expected, result);
    }
}