pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract GENIUS is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function GENIUS(address _owner)  UpgradeableToken(_owner) {
    name = "GENIUS";
    symbol = "G$X";
    totalSupply = 1000000000000000000000;
    decimals = 12;

    balances[_owner] = totalSupply;
  }
}