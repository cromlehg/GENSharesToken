<p align="center">
  <h1> GEN Shares Token</h1>
  <img src="./logo.png">
</p>


* _Standart_        : ERC20
* _Name_            : GEN Shares
* _Ticket_          : GEN
* _Decimals_        : 18
* _Emission_        : Mintable
* _Crowdsales_      : 2
* _Fiat dependency_ : No
* _Tokens locked_   : No

## Smart-contracts description

Contract mint bounty, advisors and founders tokens after each stage finished. 
Crowdsale contracts have special function to retrieve transferred in errors tokens.

### Contracts contains
1. _GENSharesToken_ - https://etherscan.io/token/0xa94be64ce43e5bf1fc2a1b0433bf35aa2f09a187
2. _Presale_ - https://etherscan.io/address/0x7b918c11398d485fceae7f2864f09701857d7549
3. _ICO_ - https://etherscan.io/address/0x165cb56703df68d34bbd6d49e816bda8302c2b7c
4. _Deployer_ - contract with main configuration for production

### How to manage contract
To start working with contract you should follow next steps:
1. Compile it in Remix with enamble optimization flag and compiler 0.4.18
2. Deploy bytecode with MyEtherWallet. Gas 5100000 (actually 5019453).
3. Call 'deploy' function on addres from (3). Gas 4000000 (actually 3979551). 

You can withdraw coins from presale at any time after softcap reached. You should call function _withdraw_ to do this. 
All coins from presale transferred to special eth wallet, which specified in presale configuration.

After each crowdsale stage contract manager must call finishMinting. 

If softcap not reached investors can retrieve coins by calling refund after presale finished.

### How to invest
To purchase tokens investor should send ETH (more than minimum 0.1 EHT) to corresponding crowdsale contract.
Recommended GAS: 200000, GAS PRICE - 21 Gwei.

### Wallets with ERC20 support
1. MyEtherWallet - https://www.myetherwallet.com/
2. Parity 
3. Mist/Ethereum wallet

EXODUS not support ERC20, but have way to export key into MyEtherWallet - http://support.exodus.io/article/128-how-do-i-receive-unsupported-erc20-tokens

Investor must not use other wallets, coinmarkets or stocks. Can lose money.

## Main network configuration

* _Base price_                 : 250 per ETH
* _Minimal insvested limit_    : 0.1 ETH

### Crowdsale stages

#### Presale
* _Softcap_                    : 45 ETH
* _Hardcap_                    : 50000 ETH
* _Bounty_                     : 4% of total tokens
* _Advisors_                   : 2% of total tokens
* _Founders_                   : 10% of total tokens
* _Start_                      : 25.11.2017 01:00 GMT 
* _End_                        : 24.12.2017 23:00 GMT
* _Founders tokens wallet_     : 0xa20C62282bEC52F9dA240dB8cFFc5B2fc8586652
* _Bounty tokens wallet_       : 0xcACBE5d8Fb017407907026804Fe8BE64B08511f4
* _Advisors tokens wallet_     : 0xD3D85a495c7E25eAd39793F959d04ACcDf87e01b
* _Contract manager_           : 0x379264aF7df7CF8141a23bC989aa44266DDD2c62
* _ETH Wallets_                : 0x4bB656423f5476FeC4AA729aB7B4EE0fc4d0B314, 0xEA15Adb66DC92a4BbCcC8Bf32fd25E2e86a2A770

_Milestones_

1. 1 week                      : +50%
2. 1 week                      : +40%
3. 2 week                      : +35%

#### ICO
* _Hardcap_                    : 206000 ETH
* _Bounty_                     : 4% of total tokens
* _Advisors_                   : 2% of total tokens
* _Founders_                   : 10% of total tokens
* _Start_                      : 25.12.2017 01:00 GMT
* _End_                        : 31.01.2018 00:00 GMT
* _Founders tokens wallet_     : 0x55A9E5b55F067078E045c72088C3888Bbcd9a64b
* _Bounty tokens wallet_       : 0x6b9f45A54cDe417640f7D49D13451D7e2e9b8918
* _Advisors tokens wallet_     : 0x3e11Ff0BDd160C1D85cdf04e012eA9286ae1A964
* _Contract manager_           : 0x379264aF7df7CF8141a23bC989aa44266DDD2c62
* _ETH Wallets_                : 0x65954fb8f45b40c9A60dffF3c8f4F39839Bf3596

_Milestones_
1. 1 week                      : +25%
2. 1 week                      : +10%
3. 2 week                      : +0%


