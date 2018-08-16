
# Disclaimer

**The Script Author Is Not Liable Of Any Loss That Might Occur While Using The Script**

**The Script is Open Source**

# Features

* `Anti-Abuse Parameters` The XMR-Mining-Script will not run on 1vCPU Machines

* `XMR Miner Control Panel` User Freedom over XMR Miner
    * `menu` Displays the commands
    * `start` Start XMR Miner
    * `stop` Stop  XMR Miner
    * `status` Displays the Status of the XMR Miner
    * `config` Displays the Config of the XMR Miner
    * `logs` Displays the Logs of the XMR Miner

# Requirements

* Responsible User
* Ubuntu 16.04 x64 atleast 2 vCPU
* Putty/Bitvise
* XMR Wallet Address


# Recommendations

**XMR Wallet Address**

`FreeWallet.org`

   FreeWallet.org has its own CrytoCurrency Converter, Much Easier to convert from XMR to BTC or Any CryptoCurrency

**vCPU Usage: 80**

`80 or Less`

   This will decrease the risk from being detected by the VPS Providers

**Threads**

`Maximum vCPU - 2`

   If you are using a 6vCPU Machine, you can only allocate a Maximum of 4 Threads

   This will also decrease the risk from being detected and to ensure that you dont overlap your vCPU Usage Limit

   Example with Computations:

6vCPU - 2 = 4

( 4/6 ) * 100 = 66.67

66.67 is less than 80

   This means that your XMR-Miner is working below the Recommended vCPU Usage

   Lesser vCPU Usage, Less Risk of Being Detected

**DigitalOcean Users**

   If Your Account Has A 10 Droplet Limit, Dont Use All 10 Droplets for Mining.

   Use Only A Maximum of 5 Droplets For Mining ONLY

   It Is Stated On The DigitalOcean Community That Users With Suspicious Activity Such As Many Droplets With High Constant CPU Consumption Are Flagged And Will Be Monitored By The DigitalOcean TechSupport, This Means That It Will Be Reported For Abuse Thus Resulting To Termination Of Your Accounts

## Installation
```wget -O XMR-Miner.sh https://git.io/fNpk8 && chmod +x XMR-Miner.sh && ./XMR-Miner.sh```
