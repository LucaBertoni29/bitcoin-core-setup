# Node

Repository creata per contenere tutti i file di configurazione e relativi servizi per implementare un nodo Bitcoin, Lightning e Server Electrum

## Bitcoin Core

### Installing
```bash
# Create dir for installation files
mkdir -p ~/bitcoin-installation && cd ~/bitcoin-installation && rm -rf * &&

# Download binaries
wget https://bitcoincore.org/bin/bitcoin-core-0.17.1/bitcoin-0.17.1-x86_64-linux-gnu.tar.gz &&

# Download signature
wget https://bitcoincore.org/bin/bitcoin-core-0.17.1/SHA256SUMS.asc &&

# Verify signature - should see "Good signature from Wladimir J. van der Laan (Bitcoin Core binary release signing key) <laanwj@gmail.com>"
gpg --verify SHA256SUMS.asc &&

# Verify the binary matches the signed hash in SHA256SUMS.asc - should see "bitcoin-0.17.1-x86_64-linux-gnu.tar.gz: OK"
grep bitcoin-0.17.1-x86_64-linux-gnu.tar.gz SHA256SUMS.asc | sha256sum -c - &&

# Unpack binaries
tar xvf bitcoin-0.17.1-x86_64-linux-gnu.tar.gz &&

# Install binaries system-wide (requires password)
sudo cp bitcoin-0.17.1/bin/* /usr/bin
```

<!--
```
# Grab rpcauth helper, verify by sha256sum
wget https://github.com/bitcoin/bitcoin/raw/v0.17.1/share/rpcauth/rpcauth.py &&
echo "7d8e1ac7f26dd61086c5a0b9a008add5636c882bd0b1ebd897f0887482e02bee rpcauth.py" | sha256sum -c &&
chmod +x rpcauth.py
```
-->
