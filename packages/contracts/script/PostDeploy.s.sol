// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import { Script } from "forge-std/Script.sol";
import { console } from "forge-std/console.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { PayToken, User,  Administrator, BindRoot, IncomeRate, Factory, Router, FeeAddress } from "../src/codegen/index.sol";

contract PostDeploy is Script {
  function run(address Address) external {
    

    // Load the private key from the `PRIVATE_KEY` environment variable (in .env)
    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");

    // Start broadcasting transactions from the deployer account
    vm.startBroadcast(deployerPrivateKey);

    // ------------------ EXAMPLES ------------------
      FeeAddress.set(vm.envAddress("FEE_ADDRESS"));
      Factory.set(vm.envAddress("FACTORY_ADDRESS"));
      Router.set(vm.envAddress("ROUTER_ADDRESS"));

    vm.stopBroadcast();
  }
}
