pragma solidity ^0.5.0;

import "./impl/KIP17Full.sol";
import "./impl/KIP17MetadataMintable.sol";
import "./impl/KIP17Mintable.sol";
import "./impl/KIP17Burnable.sol";
import "./impl/KIP17Pausable.sol";

contract KIP17Token is KIP17Full, KIP17Mintable, KIP17MetadataMintable, KIP17Burnable, KIP17Pausable {
    constructor (string memory name, string memory symbol) public KIP17Full(name, symbol) {
    }
}