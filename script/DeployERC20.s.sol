// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/ERC20Token.sol";

contract DeployERC20 is Script {
    function run() external {
        vm.startBroadcast();

        new ERC20Token("Kartal Token", "KRT");

        vm.stopBroadcast();
    }
}

