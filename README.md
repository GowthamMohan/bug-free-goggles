# bug-free-goggles
# A sample demo of voting smart contract

#### Setting up the project
Open terminal and mkdir election and cd into it.

#### Installing the necessary dependencies
  * Make sure node and npm is installed in the system
  * Install truffle
  * Install Ganache suite
  * Install metamask extension for the chrome browser
  
#### Setting up the project
  * Once the dependencies have been installed, run the command `truffle unbox pet-shop`
This installs the pet-shop boiler plate code provided by truffle which makes it easier to build our decentralized application.
  * Now go ahead and replace the files provided in this repository.
  * Make sure Ganache is running in the background.

#### Running the code
  * Open the terminal and run the command `truffle migrate`. This deploys the code to the blockchain network.
  * Run the command `npm run dev`. This opens the browser-sync and our client side application opens in the default browser.
  * Now login to Metamask and connect to the customan network. Copy the url in Ganache and paste into Metamask. It must be http://localhost:7545.
  * Copy the private key of any address from the Ganache. In metamask click on Import account and paste the copied private key.
  * Refresh the browser and choose your king. Once the vote is casted the vote button is disabled.
  * To cast another vote, copy another private key from Ganache and import into Metamask and vote again.
  
