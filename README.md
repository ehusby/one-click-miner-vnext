# Verthash One-Click Miner

This program will create a Dogecoin wallet that only you have access to.  Encrypt your wallet with a password that you will not forget. It will then create the Verthash datafile and immediately begin mining Vertcoin. You will receive payouts in Dogecoin to your built-in Dogecoin wallet from the pool selected in Settings.  Additional payout currencies via Zergpool are available in Settings.  
    
### What are the fees?
   
  - This program and the miner it runs are completely free and have no fee
  - Zergpool.com charges a 0.5% fee while mining
  - HashCryptos.com charges no fee (DOGE only)
  - Standard minimum Dogecoin network fee for withdrawal from built-in wallet (usually 1 DOGE)

### When do I get paid?

  - **Zergpool.com**
    - Every four hours on balances above 50 DOGE and 10 DOGE on Sunday late evening(CET)
    - Please check 'View Payout Information' for payout thresholds on additional currencies
  - **HashCryptos.com**
    - Every 24 hours with the ability to change payout frequency to every 12 hours (DOGE only)

### What coins does this support?

  - Dogecoin
  - Vertcoin
  - Bitcoin
  - Bitcoin cash
  - Dash
  - Digibyte
  - Ethereum
  - Firo (Zcoin)
  - Groestlcoin
  - Litecoin
  - Ravencoin

The Verthash One-Click Miner mines [Vertcoin](https://vertcoin.org) and is functionally the same as [upstream](https://github.com/vertcoin-project/one-click-miner-vnext) utilizing a new data directory, `verthash-ocm`.  This is essentially a fancy wrapper for [VerthashMiner](https://github.com/CryptoGraphics/VerthashMiner) which is also open source.

This software is available for Windows and Linux.

## FAQ

### Which GPUs are supported?

Please refer to this list of [supported hardware.](https://github.com/CryptoGraphics/VerthashMiner#supported-hardware)

### I have an error message that reads 'Failure to configure'

You may need to add an exclusion to your antivirus / Windows Defender.

### My GPU is supported but an error messages reads 'no compatible GPUs'

Update your GPU drivers to the latest version.

### I selected HashCryptos.com but Expected Earnings says zero

Please make sure you have [activated your address.](https://www.hashcryptos.com/) It may take a few minutes to activate before you see Expected Earnings and hashrate.

## Building

The GUI of this MVP is based on [Wails](https://wails.app) and [Go](https://golang.org/).

Install the Wails [prerequisites](https://wails.app/home.html#prerequisites) for your platform, and then run:

```bash
go get github.com/wailsapp/wails/cmd/wails
```

Then clone this repository, and inside its main folder, execute:

```bash
wails build
```

## Donations

If you want to support the further development of the upstream One Click Miner, feel free to donate Vertcoin to [Vmnbtn5nnNbs1otuYa2LGBtEyFuarFY1f8](https://insight.vertcoin.org/address/Vmnbtn5nnNbs1otuYa2LGBtEyFuarFY1f8).
