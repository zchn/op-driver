// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import {L1CrossDomainMessenger} from "@eth-optimism-bedrock/src/L1/L1CrossDomainMessenger.sol";
import {CrossDomainMessenger} from "@eth-optimism-bedrock/src/universal/CrossDomainMessenger.sol";

contract OpDriver {
    function run() public {
        // OP Sepolia
        L1CrossDomainMessenger l1CrossDomainMessenger = L1CrossDomainMessenger(0x58Cc85b8D04EA49cC6DBd3CbFFd00B4B8D6cb3ef);
        l1CrossDomainMessenger.sendMessage(
            // L2CrossDomainMessenger
            0x4200000000000000000000000000000000000007,
            abi.encodeCall(CrossDomainMessenger.sendMessage,
                           (address(this), abi.encodeCall(this.run, ()), 100)),
            100
        );
    }
}
