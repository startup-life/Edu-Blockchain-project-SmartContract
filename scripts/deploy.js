const hre = require("hardhat");

async function main() {
    const Token = await hre.ethers.getContractFactory("CommunityToken");
    const token = await Token.deploy(1000000); // 100만 개

    await token.waitForDeployment();
    console.log(`Token deployed at ${await token.getAddress()}`);
}

main();
