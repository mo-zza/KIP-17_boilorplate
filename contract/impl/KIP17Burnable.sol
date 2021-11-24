pragma solidity ^0.5.0;

import "./KIP17.sol";
import "./KIP13.sol";

contract KIP17Burnable is KIP13, KIP17 {
    bytes4 private constant _INTERFACE_ID_KIP17_BURNABLE = 0x42966c68;
    constructor () public {
        _registerInterface(_INTERFACE_ID_KIP17_BURNABLE);
    }

    function burn(uint256 tokenId) public {
        require(_isApprovedOrOwner(msg.sender, tokenId), "KIP17Burnable: caller is not owner nor approved");
        _burn(tokenId);
    }
}
