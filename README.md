# Metamask 
Metamask is a wallet, you can send, buyethereums tokens etc. You can take two flavors with this software
a extension of google chrome (or any other browser that works with chromium) or download the application
you can now more of this in this link [metamask](https://metamask.io/) 

- download the metamask extension [Chrome extension](https://chrome.google.com/webstore/detail/metamask/nkbihfbeogaeaoehlefnkodbefgpgknn?hl=es)
  ![image](https://user-images.githubusercontent.com/47333561/175612507-63df1f5a-b6d9-4ef6-8690-3c0878dfc3a8.png)

- You need to create an account and follow the steps, metamask will give you 16 words save them, because in case you forget your password, you need to put those 16 words in the same order.

- That is all, now you have your metamask wallet with zero ethers 😿 But don't worry, we will connect metamask to hardhat to have a lot of ethers and test our apps in local environment.
 
# hardhat 
Hardhat is an environment developers use to test, compile, deploy and debug dApps based on the Ethereum blockchain

# create a hardhat proyect
 1. Create an empty folder or if you already have a front end project you can use a similar, just omit this step

 2. run the command 
    ``yarn init 
    ``  
    ``
      npm init -y
    ``
  3. Create a hardhat project, you can use npm or yarn, in this case we will use yarn.

  ``
   yarn hardhat 
  ``
  >This will show us a command prompt saying welcome to hardhat and you have 3 options, in this case we will click "Create a sample project" but you can create with the project with TypeScript too.

  4. You need to install the next dependency 's
  ``
   yarn add -D @nomiclabs/hardhat-ethers ethers @nomiclabs/hardhat-waffle ethereum-waffle chai
  `` 
# Create a local hardhat network

``
  yarn hardhat node
``
>this runs a local ethereum instance with hardhat, these are open networks, so you never use this to make a real transaction just to play in your local machine :heavy_check_mark:

![image](https://user-images.githubusercontent.com/47333561/175613312-e578261d-0870-4741-b3ca-2cddf1f5e137.png)
We have 20 accounts to test our apps and in the remote case you use all your ethers after 24 hours you will have you 1000 ethers again!!

# connect metask to hardhat local network
 1. We need to create a new account in metamask
 2. ![image](https://user-images.githubusercontent.com/47333561/175614233-cda089a6-bd3c-4e08-8477-72005687e9b4.png)
 3. Create a new network just click "red principal de ehereum" and create a new one
 4. ![image](https://user-images.githubusercontent.com/47333561/175614528-0ab0c736-b399-495a-a9e9-e92028448f23.png)
 5. You will be redirected to a new page
 6. ![image](https://user-images.githubusercontent.com/47333561/175614729-4cad88a3-ff81-4515-94e8-1c294cd3da9e.png)
 7. ![image](https://user-images.githubusercontent.com/47333561/175615218-d1232633-69b0-4368-9199-92c4720c2cdd.png)
 8. The input "Nueva dirección URL de RPC" is your localhost and your port when you run yarn hardhat node
 9. ![image](https://user-images.githubusercontent.com/47333561/175616025-86e7ddbb-6db8-4fb9-9dd2-f306d489df02.png)
 10. On the input "identificador de cadena" you need to put 1337 number, but if you have problems you need to use 31337.
 11. On the input "Símbolo de moneda" you can put ETH but if you have problems put "GO" (omit my checks is because already have one account in localhost)
 12. After doing all that, you need to go once more to "your account" and import a private key, hardhat already gave us 20!
 13. ![image](https://user-images.githubusercontent.com/47333561/175617457-49e1f5b9-947b-4145-8fb1-3659e03f120c.png)
 14. Remember, that info you can have it with yarn hardhat node, i recommend always use different promps because that command always need to be up if we need to test our smart contracts ![image](https://user-images.githubusercontent.com/47333561/175616593-565b084c-b2e9-4269-8569-4de111a1b4a1.png)
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


## yarn hardhat console --network localhost
When you run this command, you can use your local network, but you need to code like the variables like in the previous step.
![deploytest](https://user-images.githubusercontent.com/47333561/174470648-170611f0-2bdc-44a8-8bfa-ffb25de375a1.png)

#### .editor option 
This is very helpful because we can now write multiple lines of js code in the console and see our smart contracts work in a local environment.

## deploy to network 
In this case we will use [infura](https://infura.io/)
The first step is to create account and create a project.

![image](https://user-images.githubusercontent.com/47333561/175654916-482ced23-0268-42af-9d4c-5b09b76efb8e.png)
After you create your account and your project, you can see a dashboard like this.
![image](https://user-images.githubusercontent.com/47333561/175655150-8f1c0457-3fe7-47c3-be4d-1f8329796cd7.png)

### important parts of infura:
- PROJECT SECRET
- PROJECT ID
- Endpoints
- We want to deploy our contract to some network of ethereum, so in this case we will deploy to ropsten, so select that option ![image](https://user-images.githubusercontent.com/47333561/175655984-f2778711-1c95-4bc5-8b5b-513f179f6774.png)
>You don't want anyone see these things, right? So we wanna keep that information in a variables env.

## hardhat config
>This is a huge file, so at this moment we only see how to deploy our smart contract to ropsten 
1. We have a hardhat.config.js file
2. We need to make a module.exports this is the main script that we focus 
3. ![image](https://user-images.githubusercontent.com/47333561/175656327-b37cab79-5ebb-4033-88b0-a46be634790b.png)
4. We need to add our local network if we want
5. ![image](https://user-images.githubusercontent.com/47333561/175656363-89108628-3e7c-45e7-bbef-6730292b902c.png)
6. After that we can add our ropsten configuration
7. ![image](https://user-images.githubusercontent.com/47333561/175656555-98d75945-c8d4-4d7f-a648-ca0dd7cd5de9.png)
   >The "url", is the infura url that provide to us but the last segment you want to keep secrete so we pass to a env variable the "accounts" you must export from your metamask wallet so is SUPER IMPORTANT keep that save
 8. to know your account you need to go to your metamask wallet click in the three points, click "detalles de la cuenta"  
 9. ![image](https://user-images.githubusercontent.com/47333561/175657063-7c419c05-d6a5-4299-86b9-4d61358ad277.png)
 10. show a QR code and two inputs click "exportar clave privada" 
 11. ![image](https://user-images.githubusercontent.com/47333561/175657436-fe47e412-8013-42e3-9770-c7a8d76490a5.png)
 12. Then you just need to put your password and click "confirmar"
 13. ![image](https://user-images.githubusercontent.com/47333561/175657591-631bdee9-5f0c-4f08-ae0e-d950f125d060.png)
 14. And show us a red numbers that is the private account that mus go in accounts array.
 15. ![image](https://user-images.githubusercontent.com/47333561/175657798-a7e6bba6-9ae5-46be-892c-abe90e83e8b9.png)
 16. Now we need ropsten ethers so we need to go to [fouset ropsten](https://faucet.egorfine.com/) and put your wallet account with the ropsten network
 17.![image](https://user-images.githubusercontent.com/47333561/175799955-21752546-561d-483f-b364-626393a9b628.png)
 18. then you just need run the same command to deploy the localnetwork but with ropsten instad localhost 
 ``
 yarn hardhat run scripts/deploy.js --network ropsten
 ``
 19.  This show you a small message and give you a address
 20. Go to [ropsten etherscan](https://ropsten.etherscan.io/) and put the number in the searchbox 
 21. Now you can see your smart contract in the ropsten ethereum network






