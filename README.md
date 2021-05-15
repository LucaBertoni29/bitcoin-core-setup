# Nodo Bitcoin

Repository creata per contenere tutti i file di configurazione e relativi servizi per implementare un nodo Bitcoin, Lightning e Server Electrum

Per poter implementare un nodo Bitcoin è richiesta almeno una capacità di 500GB

### Guida step-by-step per installare un nodo Bitcoin su Ubuntu
* Servizi:
  * [Bitcoin Core](https://github.com/BitSocial-lb/Node/blob/master/README.md#bitcoin-core)

## Bitcoin Core

### Installazione
```bash

# Scarica il binario
wget https://bitcoincore.org/bin/bitcoin-core-0.21.0/bitcoin-0.21.0-x86_64-linux-gnu.tar.gz &&

# Estrai il binario
tar xvf bitcoin-0.21.0-x86_64-linux-gnu.tar.gz &&

# copia tutto il contenuto della cartella nella directory /usr/bin
sudo cp bitcoin-0.21.0/bin/* /usr/bin
```
### Configurazione
Crea e modifica il file di configurazione `bitcoin.conf`

```bash
mkdir -p ~/.bitcoin &&
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
