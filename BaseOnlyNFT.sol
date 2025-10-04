// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract BaseOnlyNFT is ERC721, Ownable {
    uint256 public nextId;

    constructor() ERC721("Base Only NFT", "BASNFT") Ownable(msg.sender) {}

    function mint(address to) external onlyOwner {
        require(block.chainid == 8453, "This contract only works on Base chain");
        _safeMint(to, nextId);
        nextId++;
    }
}
