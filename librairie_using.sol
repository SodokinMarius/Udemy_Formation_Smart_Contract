pragma solidity 0.8.17;

import "https://github.com/SodokinMarius/Udemy_Formation_Smart_Contract/blob/main/Librairie.sol";

contract Bank 
{
    mapping(address => uint) public accounts;

    using SafeMath for int ;  //To define for whate you use the librairie

    function deposit() public payable{
        require(accounts[msg.sender]+msg.value >= accounts[msg.sender],"Overflow error");
        int _amount = int(msg.value);
         accounts[msg.sender] = add(accounts[msg.sender],_amount);
    }

    function withdraw(uint _amount) public {
        require(_amount <= accounts[msg.sender],"The amount is not sufficient");
        require(_amount>0,"Amount must be greater than 0");
        accounts[msg.sender] = sub(accounts[msg.sender],_amount);

    }

    function getBallance ( address account) public view returns(uint)
    {
        return accounts[account];
    }
}