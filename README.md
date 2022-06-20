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

## yarn hardhat console --network localhost
when you run this command, you can use your local network, but you need to code like the variables like the previous step.
![deploytest](https://user-images.githubusercontent.com/47333561/174470648-170611f0-2bdc-44a8-8bfa-ffb25de375a1.png)

## hardhat config...
