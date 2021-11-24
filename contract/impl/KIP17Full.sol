pragma solidity ^0.5.0;

import "./KIP17.sol";
import "./KIP17Enumerable.sol";
import "./KIP17Metadata.sol";

contract KIP17Full is KIP17, KIP17Enumerable, KIP17Metadata {
    constructor (string memory name, string memory symbol) public KIP17Metadata(name, symbol) {
    }
}
