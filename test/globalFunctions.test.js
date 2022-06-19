const { expect,  } = require("chai");
const { ethers } = require("hardhat");

describe("Test in globals", function () {
 let contractFactory;
 let initialSupply;
 let contract;
 
  beforeEach(async () => {
     contractFactory = await ethers.getContractFactory("GlobalFunctions");
     contract = await contractFactory.deploy() 
  });
  
  it("should show the message", async function () {
  const hex =   await contract.messageSender();
   expect(hex).to.equal('0xf39Fd6e51aad88F6F4ce6aB8827279cffFb92266');
  
  });
});
