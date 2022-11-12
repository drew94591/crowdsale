# KaseiCoin Crowdsale
This application creates a fungible token that is ERC-20 compliant and that will be minted by using a `Crowdsale` contract from the OpenZeppelin Solidity library.  The crowdsale contract will manage the entire crowdsale process, allowing users to send ether to the contract and in return receive KAI, or KaseiCoin tokens. The contract mints the tokens automatically and distributes them to buyers in one transaction.

---

## Technologies

This application leverages solidity version 0.5.5 with the following libraries and packages:
* [ganache](https://trufflesuite.com/ganache/) - An open source private Ethereum blockchain environment that allows to you emulate the Ethereum blockchain so that you can interact with smart contracts in your own private blockchain.

* [truffle](https://trufflesuite.com/) - An open source comprehensive suite of tools for smart contract development to quickly build, test, debug, and deploy using the Truffle CLI.

* [remix](https://remix.ethereum.org) - An open source web and desktop application used for the entire journey of contract development with Solidity language as well as a playground for learning and teaching Ethereum.

* [metamask](https://metamask.io/) - A free web and mobile crypto wallet that allows users to store and swap cryptocurrencies, interact with the Ethereum blockchain ecosystem, and host a growing array of decentralized applications (dApps).

* [solidity](https://docs.soliditylang.org/en/v0.8.17/) - Solidity is an object-oriented, high-level language for implementing smart contracts. Smart contracts are programs which govern the behaviour of accounts within the Ethereum state.

---

## Usage

First install and start up a local blockchain of Ethereum using Ganache.
Then to use the smart contracts you must first launch Remix by opening up a browser:

```Remix
https://remix.ethereum.org
```

Then compile and deploy the following smart contracts onto your local private Ethereum blockchain using the Ganache Provider:

```Solidity
KaseiCoin.sol
KaseiCoinCrowdsale.sol
```

### Evaluation Evidence

![Crowdsale](images/kasei_token_crowdsale.gif)

---
## Contributors

Brought to you by [Drew Herrera](https://www.linkedin.com/in/andrewjherrera).

---

## License

Licensed under the MIT License. Copyright 2022 Drew Herrera.
