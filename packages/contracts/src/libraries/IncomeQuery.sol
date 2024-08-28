// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import { User, UserEx, PlegedLog, IncomeRate } from "../codegen/index.sol";
import { PlegedStatus } from "../codegen/common.sol";

library IncomeQuery {
   
     /// @notice 查询静态收益
  function queryIncome(address _user) internal view returns(uint256) {
    
      uint256[] memory orders = UserEx.getOrders(_user);
      uint256 income = 0;
      for (uint256 i=0; i < orders.length; i++) {
          PlegedStatus status = PlegedLog.getStatus(orders[i]);
          if (status == PlegedStatus.Pendding) {
             uint256 diff = block.number - PlegedLog.getHeight(orders[i]);
            uint256 baseAmount = PlegedLog.getPay(orders[i]);
            income = income + (baseAmount * diff * IncomeRate.get() / 10**18);
          }
      }
      return income + User.getPledgeIncome(_user);
  }

}