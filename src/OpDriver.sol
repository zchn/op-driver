// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import {L1CrossDomainMessenger} from "@eth-optimism-bedrock/src/L1/L1CrossDomainMessenger.sol";

contract OpDriver {
    // OP Sepolia
    const address l1CrossDomainMessenger = 0x58Cc85b8D04EA49cC6DBd3CbFFd00B4B8D6cb3ef;
    function run() public {
        number++;
    }
}
