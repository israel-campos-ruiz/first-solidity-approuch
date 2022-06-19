# first-solidity-approuch
## yarn hardhat node 
# funciones básicas para el deploy, test y jugar con la consola de hardhat
``
 const contractFactory =  await ethers.getContractFactory("ContractName");
 const contract =  await contractFactory.deploy()
 console.log(contract.address) su dirección del deploy del contrato,  la cuál es necesaria cuando 
  quieras hacer el deploy en una red de ethereum
``

## yarn hardhat console --network localhost
con esto y con las variables del paso anterior puedes tener una consola para poder 
probar tus funciones similar a remix 

