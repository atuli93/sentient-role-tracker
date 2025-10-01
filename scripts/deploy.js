const hre = require("hardhat");

async function main() {
  const RoleTracker = await hre.ethers.getContractFactory("RoleTracker");
  const tracker = await RoleTracker.deploy();
  await tracker.deployed();
  console.log("RoleTracker deployed to:", tracker.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

