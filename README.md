# BaseOnlyNFT.sol

This repository provides a **smart contract for minting NFTs exclusively on the Ethereum L2 network Base**.  
It prevents accidental deployment or usage on the wrong chain by verifying the chain ID.  
The contract is provided **for educational purposes only** and should be fully audited and tested before real-world deployment.

### Features
- ERC721-compliant NFT implementation  
- Minting is restricted to **Base chain only (`block.chainid == 8453`)**  
- Only the contract owner can mint NFTs  

### Disclaimer
- This contract is for **educational and research purposes only**.  
  **Do not use it in production without a proper audit.**
- On non-Base chains (e.g., Ethereum Mainnet, Polygon), minting will **fail with an error**.  
- Ownership of NFTs is recorded on-chain and **cannot be reversed** if transferred incorrectly.

---

## License
MIT
