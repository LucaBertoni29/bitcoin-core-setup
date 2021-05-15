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

# Connect via Tor, comment if you prefer to connect directly
proxy=127.0.0.1:9050

# No incoming connections (requires port forwarding or an hidden service)
nolisten=1

# For faster sync, set according to available memory. For example, with 8GB memory, something like dbcache=5000 might make sense. Check total memory with `free -m`.
# For reduced memory usage, this can be tuned down or removed once the initial sync is complete. The default is 300 (mb).
dbcache=1000

# Optional extended transaction index (takes more space, required for btc-rpc-explorer)
txindex=1

# Reduce storage requirements (won't work with btc-rpc-explorer)
# prune=50000 # ~6 months, 50GB

# Reduce bandwidth requirements (node won't show unconfirmed transactions)
# blocksonly=1
```

```

Copy the `rpcauth=...` line to `~/.bitcoin/bitcoin.conf` and take note of your password.
-->

### Running
```bash
bitcoind
```

To test bitcoind is running:
```bash
bitcoin-cli getblockchaininfo
```
