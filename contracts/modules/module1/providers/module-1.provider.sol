// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Module1Schema as Schema} from "../../../global/dto/schemas/module-1.schema.sol";
import {Positions} from "../../../global/dto/positions.sol";
import {Module1Errors as Errors} from "../../../global/errors/module-1.error.sol";
import {IERC20} from "../controllers/IERC20.controller.sol";

library Module1Provider {
    function Module1Storage() internal pure returns (Schema.Module1Storage storage m1s) {
        bytes32 position = Positions.MODULE_1_STORAGE_POSITION;

        assembly {
            m1s.slot := position
        }
    }

    function updateBalance(address _user, uint256 _amount) internal {
        Schema.Module1Storage storage m1s = Module1Storage();

        if(_amount <= 0) {
            revert Errors.NOT_ZERO_AMOUNT();
        }

        m1s.balances[_user] = _amount;
    }
}
