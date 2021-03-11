// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.7.5;
pragma abicoder v2;

contract Wallet {
    address[] public owners;
    uint256 limit;

    struct Transfer {
        uint256 amount;
        address payable receiver;
        uint256 approvals;
        bool hasBeenSent;
        uint256 id;
    }

    Transfer[] transferRequests;

    mapping(address => mapping(uint256 => bool)) approvals;

    // Should only allow people in the owners list to continue the execution.
    modifier onlyOwners() {
        _;
    }

    // Should initialize the owners list and the limit
    constructor(address[] memory _owners, uint256 _limit) {}

    // Empty function
    function deposit() public payable {}

    // Create an instance of the Transfer struct and add it to the transferRequests array
    function createTransfer(uint256 _amount, address payable _receiver)
        public
        onlyOwners
    {}

    // Set your approval for one of the transfer requests.
    // Need to update the Transfer object.
    // Need to update the mapping to record the approval for the msg.sender.
    // When the amount of approvals for a transfer has reached the limit, this function should send the transfer to the recipient.
    // An owner should not be able to vote twice.
    // An owner should not be able to vote on a tranfer request that has already been sent.
    function approve(uint256 _id) public onlyOwners {}

    // Should return all transfer requests
    function getTransferRequests() public view returns (Transfer[] memory) {}
}
