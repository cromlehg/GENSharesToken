pragma solidity ^0.4.18;

import 'zeppelin-solidity/contracts/ownership/Ownable.sol';
import 'zeppelin-solidity/contracts/token/StandardToken.sol';
import './LockableChanges.sol';

contract GENSharesToken is StandardToken, Ownable, LockableChanges {	

  using SafeMath for uint256;

  event Mint(address indexed to, uint256 amount);

  event MintFinished();
    
  string public constant name = "GEN Shares";
   
  string public constant symbol = "GEN";
    
  uint32 public constant decimals = 18;

  bool public mintingFinished = false;
 
  address public saleAgent;

  function setSaleAgent(address newSaleAgent) public {
    require(saleAgent == msg.sender || owner == msg.sender);
    saleAgent = newSaleAgent;
  }

  function mint(address _to, uint256 _amount) public returns (bool) {
    require(!mintingFinished);
    require(msg.sender == saleAgent);
    totalSupply = totalSupply.add(_amount);
    balances[_to] = balances[_to].add(_amount);
    Mint(_to, _amount);
    Transfer(address(0), _to, _amount);
    return true;
  }

  function finishMinting() public returns (bool) {
    require(!mintingFinished);
    require(msg.sender == owner || msg.sender == saleAgent);
    mintingFinished = true;
    MintFinished();
    return true;
  }

}