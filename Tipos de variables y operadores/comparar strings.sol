// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.4 < 0.9.0;
pragma experimental ABIEncoderV2;

contract compararString{

    function comparar(string memory _i, string memory _j) public pure returns (bool){
         return keccak256(abi.encodePacked(_i)) == keccak256(abi.encodePacked(_j));
    }
}