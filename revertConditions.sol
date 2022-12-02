pragma solidity 0.8.17;

contract BankAcount 
{
    mapping(address => uint) public accounts;
 
    function deposit() public payable {
        if(accounts[msg.sender] + msg.value >= accounts[msg.sender])
        {
            revert("Overflow error");
        }

        accounts[msg.sender] += msg.value;
    }

    function withdraw(uint _amount) public {
       if (_amount <= accounts[msg.sender])
       {
           revert("The amount is not sufficient");
       }

        if(_amount>0)
        {
            revert("Amount must be greater than 0");

        }

        accounts[msg.sender] -= _amount;
    }

    function getBallance(address addr) public view returns(uint)
    {
        return accounts[addr];
    }
}