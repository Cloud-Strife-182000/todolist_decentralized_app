Requirements:

1. Install metamask extension or use an ethereum-friendly browser.
2. Use a local blockchain like ganache. Don't use actual cryptocurrency! 
3. Node command line client. (because you gotta run tests, migrate contracts, and launch it)
4. Install the node modules listed in dependencies in package.json.

How to run it:

1. Boot up ganache and wait as your local blockchain starts up.
2. Navigate to the directory and run 'truffle migrate --reset' (in node command line) to reset the smart contract.
3. Now run 'truffle test' to check if it passes all the tests.
4. Run 'npm run dev' and a webpage should open up.
5. Before interacting with it, connect metamask with your local blockchain. (use the mnemonic)
6. After it's connected, interact with the webpage. Adding items to the list or marking them will result in transactions with your local blockchain.
7. Enjoy!
