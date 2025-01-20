// SPDX-License-Identifier: MIT
pragma solidity >=0.8.25 <0.9.0;

import { FheEnabled } from "../util/FheHelper.sol";
import { Test } from "forge-std/src/Test.sol";

import { FHE, inEuint8, euint8 } from "@fhenixprotocol/contracts/FHE.sol";

import { Calculator } from "../src/1_calculator.sol";

contract CalculatorTest is Test, FheEnabled {

    Calculator calculator;

    function setUp() public virtual {
        initializeFhe();

        calculator = new Calculator();
    }

    function testSimpleAdd() public {
        inEuint8 memory a = encrypt8(1);
        inEuint8 memory b = encrypt8(3);

        euint8 result = calculator.add(a, b);
        assertEq(FHE.decrypt(result), 4);
    }
}