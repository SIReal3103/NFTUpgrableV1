# NFTUpgrableV1

Deploy:
```sh
npx hardhat run scripts/deploy.js
```
Upgrade:
```
npx hardhat run scripts/upgrade.js
```

test gettestID()
```
npx hardhat console
const nftv1 = await ethers.getContractFactory("NFTUpgrableV1")
const nft = await nftv1.attach("0x901aC246Eea525f1A576A1B6C070894F321646DF") -> Your Transparent Proxy Address
(await nft.gettestID())
```

Download [hardhat](https://hardhat.org/)
[Follow the Openzeppelin guide](https://forum.openzeppelin.com/t/openzeppelin-upgrades-step-by-step-tutorial-for-hardhat/3580)
