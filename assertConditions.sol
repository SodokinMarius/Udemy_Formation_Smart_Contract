pragma solidity 0.8.17;

contract Math 
{
    function add(uint val1,uint val2) public view returns(uint)
    {
        uint som = val1 + val2;
        assert(som >=val2);
        return som;
    }


    function multiply(uint val1, uint val2) public view returns(uint)
    {
        assert(val1 > 0);
        assert (val2 > 0);
    uint  produit = val1 * val2;

    assert(produit > val2);

    return produit;


    }

    function factoriel(uint number) public view returns(uint256)
    {
        assert(number>0);
    uint256 fact = 1;
        for(uint i=1;i<=number;i++)
        {
        fact*=i;
        }

        return fact;
    } 
}