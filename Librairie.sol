pragma solidity 0.8.17;

library SafeMath { //DEclaration of the library with key word library

    function add(int a, int b) public pure returns(int)
    {
        int som = a + b;
        assert(som>=b);
        return som;
    }

    function mutltiply(int a, int b) internal pure returns(int256)
    {
        int256 produit =  a * b;
        assert(produit >=a);
        return produit;
    }

    function max(int a,int b) internal pure returns(int)
    {
        return (a > b) ? a : b;
    }


    function min(int a,int b) internal pure returns(int)
    {
        return (a < b) ? a : b;
    }

    function sub(int a, int b ) internal pure returns(int)
    {
        return max(a,b) - min(a,b);
       
    }

    function div(int a,int b) public pure returns(int)
    {
        assert(a!=0);
        assert(b!=0);
        return max(a,b) / min(a,b);
    }
    function factorial(int a) public pure returns(int)
    {
        assert(a>0);
        require(a<=57,"Number is too much !!");
        int fact = 1;
        for(int i=0;i<a;i++)
        {
            fact *= i;
        }
        return fact;
    }


}