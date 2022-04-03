async function main() {
    const contractV1 = await ethers.getContractFactory("NFTUpgrableV1")
    console.log("Deploying NFTU, ProxyAdmin, and then Proxy...")
    const proxy = await upgrades.deployProxy(contractV1, ["NFT Upgrable", "NFTU"], {initializer: 'initialize'})
    console.log("Proxy of NFTU deployed to:", proxy.address)
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error)
        process.exit(1)
    })