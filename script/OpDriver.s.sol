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
        // OP Sepolia OptimismPortal
        // driver.run(0x58Cc85b8D04EA49cC6DBd3CbFFd00B4B8D6cb3ef);
        // Zora Sepolia OptimismPortal
        driver.run(0xeffE2C6cA9Ab797D418f0D91eA60807713f3536f);

        vm.stopBroadcast();
    }
}
