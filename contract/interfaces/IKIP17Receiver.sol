pragma solidity ^0.5.0;

contract IKIP17Receiver {
    function onKIP17Received(address operator, address from, uint256 tokenId, bytes memory data)
    public returns (bytes4);
}
