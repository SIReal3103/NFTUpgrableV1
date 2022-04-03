// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol";

contract NFTUpgrableV2 is Initializable, ERC721Upgradeable, OwnableUpgradeable {
    using CountersUpgradeable for CountersUpgradeable.Counter;

    ERC721Upgradeable token;

    string baseURI;

    uint256 testID ;

    CountersUpgradeable.Counter private _tokenIdCounter;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    function initialize() initializer public {
        __ERC721_init("NFT Upgrable", "NFTU");
        __Ownable_init();
    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://metadata.overleaguev2.com/";
    }

    function getBaseURI() external pure returns (string memory)
    {
        return "https://metadata.overleaguev2.com/";
    }

    function safeMint(address to) public onlyOwner {
        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        _safeMint(to, tokenId);
    }

    function gettestID() external view returns (uint256)
    {
        return testID;
    }
}