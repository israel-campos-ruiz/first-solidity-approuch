# Metamask 
Metamask isa wallet,, you can send, buyethereums tokens etc. You can take two flavors with this software
a extension of google chrome (or any other browser that works with chromium) or download the application
 you can now more of this in this link [metamask](https://metamask.io/)  
# hardhat 
Hardhat is an environment developers use to test, compile, deploy and debug dApps based on the Ethereum blockchain

# create a hardhat proyect
 - create a empty folder or if you already have a front end project you can use similar just omit this step

 - run the next command 
    ``
    yarn init
    ``
    or

    ``
     npm init -y
    ``

  - Create a hardhat proyect you can use npm or yarn in this case we will use yarn

  ``
   yarn hardhat 
  ``
  >this show us a command prompt saying welcome to hardhat and you have 3 options  in this case we will click "Create a sample project" but you can create with the project  with  TypeScript too

  - you need to install the next dependency's
  ``
   yarn add -D @nomiclabs/hardhat-ethers ethers @nomiclabs/hardhat-waffle ethereum-waffle chai
  `` 
# Create a local hardhat network

``
  yarn hardhat node
``
>this runs a local ethereum instance with hardhat this are open networks so you never use this to make a real transaction just to play in your local machine :heavy_check_mark:
# Basics functions to make a deploy:
``
 yarn hardhat run <folder/fileToDeploy> --network <localhost or network-name>
``
# basic deploy on deploy.js
``
 const hre = require("hardhat");
 const main = async () => {
  const contractFactory =  await ethers.getContractFactory("ContractName");
  const contract =  await contractFactory.deploy()
  console.log(contract.address)
 } 
``

then you can go to [ropsten.etherscan](https://ropsten.etherscan.io/) and see your deployment 
you just need your address contract 



## yarn hardhat console --network localhost
when you run this command, you can use your local network, but you need to code like the variables like the previous step.
![deploytest](https://user-images.githubusercontent.com/47333561/174470648-170611f0-2bdc-44a8-8bfa-ffb25de375a1.png)

## deploy to network 
In this case we will use [infura](https://infura.io/)
the first spet is create a count and create a proyect.


## hardhat config...
