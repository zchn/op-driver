// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {OpDriver} from "../src/OpDriver.sol";

contract OpDriverScript is Script {
    OpDriver public driver;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        driver = new OpDriver();

        vm.stopBroadcast();
    }
}
