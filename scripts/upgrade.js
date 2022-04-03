async function main() {
    const NFTU2 = await ethers.getContractFactory("NFTUpgrableV2")
    let nftu = await upgrades.upgradeProxy("0x901aC246Eea525f1A576A1B6C070894F321646DF", NFTU2)
    console.log("Your upgraded proxy is done!", nftu.address)
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error)
        process.exit(1)
    })