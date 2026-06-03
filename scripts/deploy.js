const hre = require("hardhat");

async function main() {
  const CrossChainMessenger = await hre.ethers.getContractFactory("CrossChainMessenger");
  const messenger = await CrossChainMessenger.deploy();
  await messenger.deployed();
  console.log("CrossChainMessenger deployed to:", messenger.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});