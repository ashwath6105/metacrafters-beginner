// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract token_Genome {

    string public tokenName = "Genome";
    string public tokenAbbriviation = "GNM";
    uint public total_supply = 0;

    mapping(address => uint) public bal;

   
    function mint(address adrs, uint val) public {
        total_supply += val;
        bal[adrs] += val;
    }

    function burn(address adrs, uint val) public {
        if(bal[adrs] >= val)
        {
            total_supply -= val;
            bal[adrs] -= val;
        } 
    }
}
