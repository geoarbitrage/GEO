// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import { Relation, User, Total, Pledging } from "../codegen/index.sol";

library UpdateLevel {
  function _userLeveUpdate(address _user, uint256 _amount) internal {
    uint256 amount  = User.getPledge(_user);
    uint256 level = User.getLevel(_user);
    _updateLevel(amount, level, 0, _user);
    _userParentLeveUpdate(_user);

  }

  function _userParentLeveUpdate(address _user) internal {
      address[] memory userParent = Relation.getParent(_user);
      unchecked {
         for (uint256 i=0; i< userParent.length; i++) {
            uint256 amount = User.getPledge(userParent[i]);
            uint256 level = User.getLevel(userParent[i]);
            _updateLevel(amount, level, 0, userParent[i]);
         }   
      }
  }

  function _updateLevel(uint256 amount, uint256 level, uint256 small, address _user) internal {
        uint256 pnum = Pledging.getNum(_user); 
        uint256 total = Pledging.getTotal(_user);
        if (amount >= 300e18 && level < 1 && pnum >= 1) {
           User.setLevel(_user, 1);
        }

        if (amount >= 500e18 && level < 2 && pnum >= 2 && total >= 3000e18) {
           User.setLevel(_user, 2);
        }

        if (amount >= 1000e18 && level < 3 && pnum >= 3 && total >= 10000e18) {
           User.setLevel(_user, 3);
        }

        if (amount >= 1500e18 && level < 4 && pnum >= 4 && total >= 50000e18) {
           User.setLevel(_user, 4);
        }

        if (amount >= 2000e18 && level < 5 && pnum >= 5 && total >= 300000e18) {
           User.setLevel(_user, 5);
        }

        if (amount >= 3000e18 && level < 6 && pnum >= 6 && total >= 500000e18) {
           User.setLevel(_user, 6);
        }

        if (amount >= 4000e18 && level < 7 && pnum >= 7 && total >= 1000000e18) {
           User.setLevel(_user, 7);
        }

        if (amount >= 5000e18 && level < 8 && pnum >= 8 && total >= 5000000e18) {
           User.setLevel(_user, 8);
        }
        Pledging.setLevel(_user, User.getLevel(_user));
        Pledging.setUserAddr(_user, _user);
  }

}