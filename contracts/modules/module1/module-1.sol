// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {Module1Provider as provider} from "./providers/module-1.provider.sol";
import {IModule1} from "./controllers/IModule1.controller.sol";


contract Module1 is IModule1 {
    function updateBalance(address _user, uint256 _amount) external override {
        provider.updateBalance(_user, _amount);
    }
}
