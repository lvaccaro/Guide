#!/bin/bash
DATADIR="~/.delethereum"
IDENTITY="My DelEthereum Node"
NAT="none"
PARAMS=""
            
while [[ $# -gt 1 ]]
do
key="$1"

case $key in
    -d|--datadir)
    DATADIR="$2"
    shift # past argument
    ;;
    -i|--identity)
    IDENTITY="$2"
    shift # past argument
    ;;
    -n|--nat)
    NAT="$2"
    shift # past argument
    ;;
    *)
    PARAMS=PARAMS "$2"
    ;;
esac
shift # past argument or value
done

if [  -d "$DATADIR" ]
then
	# Folder exist
  	echo "start..."
else
	# Folder not exist
  	echo "build datadir..."
  	mkdir "$DATADIR" 
  	cd "$DATADIR"
  	wget https://pastebin.com/raw/NgRX3viA
  	mv NgRX3viA genesis.json
  	wget https://pastebin.com/raw/zwZ9VKDV
  	mv zwZ9VKDV static_nodes.json
  	cd ..
  	geth --datadir "$DATADIR" init genesis.json
fi

geth --datadir "$DATADIR" --networkid 666 --identity "$IDENTITY" --rpc --nodiscover  --verbosity 5 --nat "$NAT" "$PARAMS" console
