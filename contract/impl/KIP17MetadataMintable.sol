pragma solidity ^0.5.0;

import "./KIP17Metadata.sol";
import "./KIP13.sol";
import "./KIP17.sol";

import "../lib/access/roles/MinterRole.sol";

contract KIP17MetadataMintable is KIP13, KIP17, KIP17Metadata, MinterRole {
    bytes4 private constant _INTERFACE_ID_KIP17_METADATA_MINTABLE = 0xfac27f46;

    constructor () public {
        _registerInterface(_INTERFACE_ID_KIP17_METADATA_MINTABLE);
    }

    function mintWithTokenURI(address to, uint256 tokenId, string memory tokenURI) public onlyMinter returns (bool) {
        _mint(to, tokenId);
        _setTokenURI(tokenId, tokenURI);
        return true;
    }
}
