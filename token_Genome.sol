// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract token_Genome {

    string public tokenName = "Genome";
    string public tokenAbbriviation = "GNM";
    uint public total_supply = 0;

    mapping(address => uint) public bal;

    // mint function
    function mint(address addr, uint data) public {
        total_supply += data;
        bal[addr] += data;
    }
    // burn function
    function burn(address addr, uint data) public {
        if(bal[addr] >=data)
        {
            total_supply -= data;
        bal[addr] -= data;
        } 
    }
}
