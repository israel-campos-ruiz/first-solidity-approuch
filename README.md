# Metamask 
Metamask isa wallet,, you can send, buyethereums tokens etc. You can take two flavors with this software
a extension of google chrome (or any other browser that works with chromium) or download the application
you can now more of this in this link [metamask](https://metamask.io/) 

- download the metamask extension [Chrome extension](https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=es)
  ![image](https://user-images.githubusercontent.com/47333561/175612507-63df1f5a-b6d9-4ef6-8690-3c0878dfc3a8.png)

- You need to create an account and follow the steps, metamask will give you 16 words save them, because in case you forget your password, you need to put those 16 words in the same order.

- That is all now you have your metamask wallet with cero ethers 😿 But don't worry, we will connect metamask to hardhat to have a lot of ethers and test our apps in local environment.
 
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

![image](https://user-images.githubusercontent.com/47333561/175613312-e578261d-0870-4741-b3ca-2cddf1f5e137.png)
We have 20 accounts to test our apps and in the remote case you use all your ethers after 24 hours you will have you 1000 ethers again!!

# connect metask to hardhat local network
 1. we need to create a new account in metamask
 2. ![image](https://user-images.githubusercontent.com/47333561/175614233-cda089a6-bd3c-4e08-8477-72005687e9b4.png)
 3. create a new network just click "red principal de ehereum" and create a new one
 4. ![image](https://user-images.githubusercontent.com/47333561/175614528-0ab0c736-b399-495a-a9e9-e92028448f23.png)
 5. you will be redirect to a new page 
 6. ![image](https://user-images.githubusercontent.com/47333561/175614729-4cad88a3-ff81-4515-94e8-1c294cd3da9e.png)
 7. ![image](https://user-images.githubusercontent.com/47333561/175615218-d1232633-69b0-4368-9199-92c4720c2cdd.png)
 8. the input "Nueva dirección URL de RPC" is your localhost and your port when you run yarn hardhat node 
 9. ![image](https://user-images.githubusercontent.com/47333561/175616025-86e7ddbb-6db8-4fb9-9dd2-f306d489df02.png)
 10. in the input "identificador de cadena" you need to put 1337 number but if you have problems you need to use 31337
 11. int he input "Símbolo de moneda" you can put ETH but if you have problems put GO (omit my checks is because i all ready have one account in localhost)
 12. after of doing all that, you need to go once more to "your account" and import a private key,  hardhat all ready give us 20!
 13. ![image](https://user-images.githubusercontent.com/47333561/175617457-49e1f5b9-947b-4145-8fb1-3659e03f120c.png)
 14. Remember that info you can have it with yarn hardhat node i recommend always use different promps because that command always need to be up if we need to test our smartcontracts ![image](https://user-images.githubusercontent.com/47333561/175616593-565b084c-b2e9-4269-8569-4de111a1b4a1.png)
 15. just copy and past the private key hit import button
 16. ![image](https://user-images.githubusercontent.com/47333561/175617700-d2e36145-79e5-454d-9412-97dd557e7ec7.png)
 17. And there you go you have your metamask wallet connect to hardhat with 1000 ehers remember this ethers are only to test ![image](https://user-images.githubusercontent.com/47333561/175617839-139c6c95-c2fd-4434-92f0-ea409ef36a2c.png)






 


# Basics functions to make a deploy:
``
 yarn hardhat run <folder/fileToDeploy> --network <localhost or network-name>
``
# basic deploy on deploy.js
``
 const hre = require("hardhat");
``
<br/>
 ``
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
