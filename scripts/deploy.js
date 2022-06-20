// We require the Hardhat Runtime Environment explicitly here. This is optional
// but useful for running the script in a standalone fashion through `node <script>`.
//
// When running the script with `npx hardhat run <script>` you'll find the Hardhat
// Runtime Environment's members available in the global scope.
const hre = require("hardhat");

const  main = async () => {
  // TODO find a way to make this more simple and fast 
  // deploy one
  const factoryContract = await hre.ethers.getContractFactory("Inbox");
  const contract = await factoryContract.deploy("Hello, Hardhat!");
  await contract.deployed();
// deploy two
  const factoryContractG = await hre.ethers.getContractFactory("GlobalFunctions");
  const contractG = await factoryContractG.deploy();
  await contractG.deployed();

  // deploy three

  const factoryContractKeccak = await hre.ethers.getContractFactory("Keccak");
  const contractKeccak = await factoryContractKeccak.deploy();
  await contractKeccak.deployed();
  
  // deploy Time Contract 
  
  const factoryContractTime = await hre.ethers.getContractFactory("Time");
  const contractTime = await factoryContractTime.deploy();
  await contractTime.deployed();

}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
