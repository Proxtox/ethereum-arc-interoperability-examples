// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title CrossChainMessenger
/// @notice Example contract for cross-chain messaging between Ethereum and Arc
contract CrossChainMessenger {
    event MessageSent(address indexed from, string message, string targetChain);
    event MessageReceived(string message, string sourceChain);

    function sendMessage(string memory message, string memory targetChain) external {
        emit MessageSent(msg.sender, message, targetChain);
        // In production: call bridge / CCTP / LayerZero
    }

    function receiveMessage(string memory message, string memory sourceChain) external {
        emit MessageReceived(message, sourceChain);
    }
}