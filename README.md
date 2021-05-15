# Node

Repository creata per contenere tutti i file di configurazione e relativi servizi per implementare un nodo Bitcoin, Lightning e Server Electrum

## Bitcoin Core

### Installing
```bash

# Download binaries
wget https://bitcoincore.org/bin/bitcoin-core-0.21.0/bitcoin-0.21.0-x86_64-linux-gnu.tar.gz &&

# Unpack binaries
tar xvf bitcoin-0.21.0-x86_64-linux-gnu.tar.gz &&

# Install binaries system-wide (requires password)
sudo cp bitcoin-0.21.0/bin/* /usr/bin
```
### Configuring
Create and edit `bitcoin.conf`

```bash
mkdir -p ~/.bitcoin &&
gedit ~/.bitcoin/bitcoin.conf
```
Add the following and save:
```bash
server=1
txindex=1

# Specify your own public IP address.
externalip="IP"
```

To test bitcoind is running:
```bash
bitcoin-cli getblockchaininfo
```
