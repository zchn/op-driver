// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {OpDriver} from "../src/OpDriver.sol";

contract OpDriverTest is Test {
    OpDriver public driver;

    function setUp() public {
        driver = new OpDriver();
    }

    function test_Run() public {
        driver.run();
    }
}
