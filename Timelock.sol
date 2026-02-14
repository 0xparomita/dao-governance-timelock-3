// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {TimelockController} from "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/governance/TimelockController.sol";

contract MyTimelock is TimelockController {
    // minDelay: how long users have to wait before a proposal can be executed
    // proposers: list of addresses that can propose (usually the Governor)
    // executors: list of addresses that can execute (usually address(0) for anyone)
    constructor(uint256 minDelay, address[] memory proposers, address[] memory executors)
        TimelockController(minDelay, proposers, executors, msg.sender)
    {}
}
