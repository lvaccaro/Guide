# Hitchhiker's guide to Fork Ethereum
In the beginning was the Block, and the Block was God.


## Build the Genesis
As Bitcoin, also Ethereum start from a genesis block. On opposite of Bitcoin, I can define the initial constants and the property of our blockchain without modify the source-code. I write properties in json format into genesis.json file.
```
$ cat genesis.json 
{
    "config": {
        "chainId": 666,
        "homesteadBlock": 0,
        "eip155Block": 0,
        "eip158Block": 0
    },
    "difficulty": "0x40",
    "gasLimit": "0x8000000",
    "alloc": {
    }
}
```
Note that I don't define or mine the initial block. On opposite of Bitcoin, Ethereum makes all the job with a simple command:
```
$ geth --datadir "/opt/ethereum/ethdata" init genesis.json
```
In this example, I choose to don't use the default ethereum folder, so I can start more than one peer in the same machine. I will use this data folder in the next sections.

### Resources
* https://souptacular.gitbooks.io/ethereum-tutorials-and-tips-by-hudson/content/private-chain.html
