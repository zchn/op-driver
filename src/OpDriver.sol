// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.15;

import {OptimismPortal} from "@eth-optimism-bedrock/src/L1/OptimismPortal.sol";
import {L2ToL1MessagePasser} from "@eth-optimism-bedrock/src/L2/L2ToL1MessagePasser.sol";

contract OpDriver {
    address constant l2ToL1MessagePasserAddr = 0x4200000000000000000000000000000000000016;

    function run(address optimismPortalAddr) public {
        // OP Sepolia
        OptimismPortal portal = OptimismPortal(payable(optimismPortalAddr));
        portal.depositTransaction(
            // L2ToL1MessagePasser
            /* _to  */ l2ToL1MessagePasserAddr,
            /* _value */ 0,
            /* _gasLimit  */ 287725,
            /* _isCreation */ false,
            /* _data */
            abi.encodeCall(L2ToL1MessagePasser.initiateWithdrawal,
                           (address(this), 100, abi.encodeCall(this.run, (optimismPortalAddr))))
        );
    }
}
