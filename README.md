# DelEthereum
http://www.delethereum.org


The best Ethereum scam-clone. 
Enjoy with our scam-contract.

## Our values
* in Force, we Trust
* in Smart Contracts, we Verify
* in Ethereum, we Fork
* in Low-fees, we Hope
* in You, we Need.

## go-delethereum Client
Install the official Ethereum client or build your own from https://github.com/Delethereum/go-delethereum.
Make sure, you have geth command in your $PATH.

Installing from PPA for Linux
```
$ sudo add-apt-repository -y ppa:ethereum/ethereum
$ sudo apt-get update
$ sudo apt-get install ethereum
```
Installing from Brew for MacOS
```
$ brew tap ethereum/ethereum
$ brew install ethereum
```
Building from source
```
$ git clone https://github.com/delethereum/go-delethereum
$ cd go-delethereum
$ make geth
$ ln -s `echo pwd`/build/bin/geth /usr/local/bin
```
Run DelEthereum:
```
$ wget https://raw.githubusercontent.com/Delethereum/Guide/master/deth
$ chmod +x deth
$ sudo ln -s `echo pwd`/deth /usr/local/bin
```

## deMist Wallet
https://github.com/Delethereum/deMist

Start Delethereum peer on localhost
```
$ sh deth.sh
```
Start the client on MacOS
```
$ /Applications/Ethereum\ Wallet.app/Contents/MacOS/Ethereum\ Wallet --rpc /tmp/delethereum/geth.ipc
```
Start the client on Linux (in the mist root dir)
```
$ cd interface && meteor --no-release-check
$ node_modules/electron/dist/electron . --rpc /tmp/delethereum/geth.ipc
```


## Official Platform 
* website : http://www.delethereum.org
* explorer : http://explorer.delethereum.org
* pool : http://pool.delethereum.org
* mywallet : http://mywallet.delethereum.org
* stats : http://stats.delethereum.org
