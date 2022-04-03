// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

contract NFTUpgrableV1 is Initializable, ERC721Upgradeable, OwnableUpgradeable {
    ERC721Upgradeable token;

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() initializer {}

    string baseURI ;

    uint256 testID ;

    function initialize(string memory name, string memory symbol) initializer public {
        __ERC721_init(name, symbol);
        __Ownable_init();
        testID = 123;
    }

    function _baseURI() internal pure override returns (string memory) {
        return "https://metadata.overleaguev1.com/";
    }

    function safeMint(address to, uint256 tokenId) public onlyOwner {
        _safeMint(to, tokenId);
    }

    function gettestID() external view returns (uint256)
    {
        return testID;
    }
}