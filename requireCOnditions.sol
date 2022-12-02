pragma solidity 0.8.17;

contract Bank 
{
    mapping(address => uint) public accounts;

    function deposit() public payable{
        require(accounts[msg.sender]+msg.value >= accounts[msg.sender],"Overflow error");
        accounts[msg.sender] += msg.value;
    }

    function withdraw(uint _amount) public {
        require(_amount <= accounts[msg.sender],"The amount is not sufficient");
        require(_amount>0,"Amount must be greater than 0");
        accounts[msg.sender] -= _amount;

    }

    function getBallance ( address account) public view returns(uint)
    {
        return accounts[account];
    }
}