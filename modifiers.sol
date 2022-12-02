pragma solidity 0.8.17;

 
contract owned {

    constructor() public { owner = payable(msg.sender); }
    address payable owner;
 
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
}
 
contract mortal is owned {
 
    function close() public onlyOwner {
        selfdestruct(owner);
    }
}