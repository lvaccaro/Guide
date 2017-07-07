# Hitchhiker's guide to Fork Ethereum
In the beginning was the Block, the Block was with Ethereum, and the Block was Ethereum.


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
The list of all parameters 
In the following, I The main config options:
* chainId:
* difficulty:
* gasLimit:
* alloc: list of address with an initial value (PREMIED as each best scam)
Note that I don't define or mine the initial block. On opposite of Bitcoin, Ethereum makes all the job with a simple command:
```
$ geth --datadir "/opt/ethereum/ethdata" init genesis.json
```
Geth generates the genesis block and I can start to play!
In this example, I choose to don't use the default Ethereum folder, so I can start more than one peer in the same machine. I will use this data folder in the next sections.

## Master Node
Start the first peer of the network!
```
$ geth --datadir "/opt/ethereum/ethdata" --networkid 666 --identity "MyEthereumNode" --rpccorsdomain "*" --nodiscover --rpc -verbosity 5 -nat "none" -rpcaddr MASTER_IP
```
When the peer is open to public, a lots of other peers try to connect to my node. These peers have different genesis block, so the commucation fails, as the follow example:
```
TRACE[07-04|02:23:29] Accepted connection                      addr=201.231.140.128:33214
DEBUG[07-04|02:23:30] Adding p2p peer                          id=4178fe0c77e647ba name=Parity/v1.6.7-beta-e...                                         addr=201.231.140.128:33214 peers=2
TRACE[07-04|02:23:30] Starting protocol eth/63                 id=4178fe0c77e647ba conn=inbound
DEBUG[07-04|02:23:30] Ethereum peer connected                  id=4178fe0c77e647ba conn=inbound name=Parity/v1.6.7-beta-e128418-20170518/x86_64-linux-gnu/rustc1.17.0
DEBUG[07-04|02:23:30] Ethereum handshake failed                id=4178fe0c77e647ba conn=inbound err="Genesis block mismatch - a3c565fc15c74788 (!= db8b372432b35224)"
```
I try different combination before run successfully a node. 
Most common error:

* No Connection : set options to disable nat port mapping mechanism (--nat "none")
```
DEBUG[07-04|01:51:42] Couldn't add port mapping                proto=tcp extport=30303 intport=30303 interface="UPnP or NAT-PMP" err="no UPnP or NAT-PMP router discovered"
```
* Too many connections : set options to restrict the inbound connections (--nodiscover, --maxpeers, --maxpendpeers, --netrestrict)

* No rpc connection : set the public ip as the external interface (--rpcaddr <PUBLIC_IP>)




### Resources
* https://souptacular.gitbooks.io/ethereum-tutorials-and-tips-by-hudson/content/private-chain.html
