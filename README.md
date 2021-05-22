# Nodo Bitcoin

Repository creata per contenere tutti i file di configurazione e relativi servizi per implementare un nodo Bitcoin, Lightning e Server Electrum

Per poter implementare un nodo Bitcoin è richiesta almeno una capacità di 500GB

### Guida step-by-step per installare un nodo Bitcoin su Ubuntu
* Servizi:
  * [Bitcoin Core](https://github.com/BitSocial-lb/BitcoinCore/blob/master/README.md#bitcoin-core)
  * [Block Explorer (btc-rpc-explorer)](https://github.com/BitSocial-lb/BitcoinCore/blob/master/README.md#btc-rpc-explorer)

## Bitcoin Core

### Installazione
```bash

# Scarica il binario
wget https://bitcoincore.org/bin/bitcoin-core-0.21.0/bitcoin-0.21.0-x86_64-linux-gnu.tar.gz

# Estrai il binario
tar xvf bitcoin-0.21.0-x86_64-linux-gnu.tar.gz

# copia tutto il contenuto della cartella nella directory /usr/bin
sudo cp bitcoin-0.21.0/bin/* /usr/bin
```
### Configurazione
Crea e modifica il file di configurazione `bitcoin.conf`

```bash
mkdir -p ~/.bitcoin
nano ~/.bitcoin/bitcoin.conf
```
Copia e incolla le seguanti informazioni, infine salva
```bash
server=1
txindex=1
```

### Avvia Bitcoin
```bash
bitcoind
```

Testa se funziona
```bash
bitcoin-cli getblockchaininfo
```

## btc-rpc-explorer

### Installazione
```bash
# Pulisci da eventuali installazioni precedenti
rm -rf ~/btc-rpc-explorer &&

# Download
git clone https://github.com/janoside/btc-rpc-explorer ~/btc-rpc-explorer && cd ~/btc-rpc-explorer &&
git checkout 1ca6f54b93a56d942a90f3e0072265c9df3b9e6c &&

# Verifica la firma -  "Good signature from Dan Janosik <dan@47.io>"
git verify-commit HEAD &&

# Installa il Block Explorer
npm install -g
```

### Configurazione

Configura .env `~/.config/btc-rpc-explorer.env` 
Puoi trovarlo direttamente nella repository Configuration File 

Visita [btc-rpc-explorer docs](https://github.com/janoside/btc-rpc-explorer) per saperne di più.

### Avvia
```bash
btc-rpc-explorer
```

Apri http://localhost:3002/node-status oppure nel nostro caso http://"IP_del_PC":3002/node-status
