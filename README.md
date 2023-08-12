# Getting Started with Solidity - Creating a Token

This Solidity program is a simple program that is used for creating a token named Genome(GNM).

## Description

This is a simple program used for minting and burning of tokens. The contract has 2 functions - "mint" and "burn" which creates tokens and destroys existung tokens respectively. 

The function mint increases the number tokens in supply by the input provided by the user. 

Similarly, the burn function reduces the number of tokens in uspply by hte input provided by the user. 

The function burn contains an 'if' conditional statement to make sure the number of tokens to be burned is not greater than the number of tokens already present in the account.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., token_Genome.sol). Copy and paste the following code into the file:

```
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

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile token_Genome.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar.

Once the contract is deployed, you can interact with it by calling all the different function.

Calling the tokenName function gives us the name of the token, in this case, Genome.

Then calling the tokenAbbriviation function gives us the abbriviation of the token, in this case, GNM.

In the mint and burn functions, we can mint and burn tokens accordingly by providing the account address and the number of tokens to be minted or burned.

The total_supply function gives us the total number of tokens present in the account address.

## Authors

Ashwath R

ashwathraju85@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
