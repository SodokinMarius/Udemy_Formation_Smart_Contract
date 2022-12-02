pragma solidity 0.8.17;

library SafeMath {

    function add(uint256 a, uint256 b) public pure returns(uint256)
    {
        uint256 som = a + b;
        assert(som>=b);
        return som;
    }

    function mutltiply(uint256 a, uint256 b) internal pure returns(uint256)
    {
        uint256 produit =  a * b;
        assert(produit >=a);
        return produit;
    }

    function max(uint256 a,uint256 b) internal pure returns(uint256)
    {
        return (a > b) ? a : b;
    }


    function min(uint256 a,uint256 b) internal pure returns(uint256)
    {
        return (a < b) ? a : b;
    }

    function sub(uint256 a, uint256 b ) internal pure returns(uint256)
    {
        return max(a,b) - min(a,b);
       
    }

    function div(uint256 a,uint256 b) public pure returns(uint256)
    {
        assert(a!=0);
        assert(b!=0);
        return max(a,b) / min(a,b);
    }
    function factorial(uint256 a) public pure returns(uint256)
    {
        assert(a>0);
        require(a<=57,"Number is too much !!");
        uint256 fact = 1;
        for(uint256 i=0;i<a;i++)
        {
            fact *= i;
        }
        return fact;
    }


}