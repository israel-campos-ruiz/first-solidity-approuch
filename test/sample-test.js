const { expect } = require("chai");
const { ethers } = require("hardhat");

describe("Greeter", function () {
 let contractFactory;
 let initialSupply;
 let contract;
 
  beforeEach(async () => {
     contractFactory = await ethers.getContractFactory("Inbox");
     initialSupply = ethers.utils.parseEther("100000");
     contract = await contractFactory.deploy(initialSupply) 
  });
  
  it("should show the message", async function () {
    await contract.setMessage("hola mundo");
    const helloWorld = await contract.message();
    expect(helloWorld).to.equal("hola mundo");

  });
});
