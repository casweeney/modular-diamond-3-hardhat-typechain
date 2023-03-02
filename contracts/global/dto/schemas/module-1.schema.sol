// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

library Module1Schema {
    struct Module1Storage {
        address stakingContract;
        mapping(address => uint256) balances;
    }
}
