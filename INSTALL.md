# Installation Guide

## go-delethereum client
Download & build the client from https://github.com/delethereum/go-delethereum. 
In alternative, download the official Ethereum implementation from https://github.com/ethereum/go-ethereum.
```
$ git clone https://github.com/delethereum/go-delethereum
$ cd go-delethereum
$ make geth
$ ln -s ./build/bin/geth /usr/local/bin
```
Download & run the DelEthereum client configuration:
```
$ wget https://github.com/delethereum/guide/deth.sh
$ sh deth.sh
```

## deMist wallet
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
