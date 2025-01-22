[gitpod]: https://gitpod.io/#https://github.com/fhenixprotocol/fhenix-foundry-template
# FHE Puzzles
Hands-on FHE problem solving. Inspired by [Huff Puzzles](https://github.com/RareSkills/huff-puzzles) and [Gas Puzzles](https://github.com/RareSkills/gas-puzzles) from [Rareskills](https://www.rareskills.io/)

## Getting Started
Install List: 
- [Foundry](https://book.getfoundry.sh/getting-started/installation) for managing the smart contracts, running tests
- [bun](https://bun.sh/package-manager) for managing dependencies

```sh
$ git clone git@github.com:marronjo/fhe-puzzles.git #clone the repo
$ bun install # install Solhint, Prettier, and other dependencies
```

## How to Play
1. Locate the first puzzle in the `/src` directory `1_calculator.sol`
2. Follow the comments in the contract to complete the puzzle
3. Run the tests by using `forge test --mc Calculator` to see if you passed the first test
4. Rinse and repeat for the rest of the exercises
