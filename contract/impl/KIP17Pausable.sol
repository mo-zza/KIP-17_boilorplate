pragma solidity ^0.5.0;

import "./KIP17.sol";
import "./lifecycle/Pausable.sol";
import "./KIP13.sol";

contract KIP17Pausable is KIP13, KIP17, Pausable {
    bytes4 private constant _INTERFACE_ID_KIP17_PAUSABLE = 0x4d5507ff;

    constructor () public {
        _registerInterface(_INTERFACE_ID_KIP17_PAUSABLE);
    }

    function approve(address to, uint256 tokenId) public whenNotPaused {
        super.approve(to, tokenId);
    }

    function setApprovalForAll(address to, bool approved) public whenNotPaused {
        super.setApprovalForAll(to, approved);
    }

    function transferFrom(address from, address to, uint256 tokenId) public whenNotPaused {
        super.transferFrom(from, to, tokenId);
    }
}
