// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RoleTracker {
    struct RoleEntry {
        string discord;
        string github;
        string tweet;
        string role;
        uint256 timestamp;
    }

    mapping(address => RoleEntry[]) public userRoles;

    event RoleLogged(address indexed user, string role, uint256 timestamp);

    function logRoleUpgrade(
        string memory discord,
        string memory github,
        string memory tweet,
        string memory role
    ) public {
        RoleEntry memory entry = RoleEntry(discord, github, tweet, role, block.timestamp);
        userRoles[msg.sender].push(entry);
        emit RoleLogged(msg.sender, role, block.timestamp);
    }

    function getRoles(address user) public view returns (RoleEntry[] memory) {
        return userRoles[user];
    }
}
