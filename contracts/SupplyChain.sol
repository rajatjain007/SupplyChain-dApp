// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SupplyChain{
    uint32 public product_id = 0; // Product ID
    uint32 public participant_id = 0; // Participant ID
    uint32 public owner_id = 0; // Owner ID

    struct product{
        string modelNumber;
        string partNumber;
        string serialNumber;
        address productOwner;
        uint32 cost;
        uint32 mfgTimeStamp;
    }
    mapping(uint32=>product) public products;

    struct participant{
        string username;
        string password;
        string participantType;
        address participantAddress;
    }
    mapping(uint32=>participant) public participants;



    struct ownership{
        uint32 productId;
        uint32 ownerId;
        uint32 trxTimeStamp;
        address productOwner;
    }
    mapping(uint32=>ownership) public ownerships; // ownerships by ownership ID
    mapping(uint32=>uint32[]) public productTrack; // ownerships by product ID


}