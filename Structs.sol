pragma solidity 0.8.17;
contract Bank {
 struct Account {
 address addr;
 uint amount;
 }
 
 Account public acc = Account({
 addr: 0x66ec542D55a86F2Fd0B0d9cB9f31bc20aC02477a,
 amount: 50
 });

 Account public account = Account({
        addr :payable(0x1aE0EA34a72D944a8C7603FfB3eC30a6669E454C),
        amount : 150
 });
 
 function addAmount(uint _addMoney) public {
 acc.amount += _addMoney;
 }

function getAmount() public view returns(uint)
{
    return acc.amount;
} 
  
  function withdraw(uint _amount ) public
  {
      require(_amount >0,"Amount must be greater than 0");
      require(_amount <=acc.amount,"Account money isn't sufficient !");
      acc.amount -= _amount;

  }

  function transferMoney(uint _amount) public 
  {
      require(_amount >0,"Amount must be greater than 0");
      require(_amount <=acc.amount,"Account money isn't sufficient !");
      acc.amount -= _amount;
      account.amount += _amount;

  }
}