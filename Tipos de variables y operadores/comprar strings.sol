//Indicar la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract compararString{

    function comparar(string memory _i, string memory _j) public view returns (bool){
         return keccak256(abi.encodePacked(_i)) == keccak256(abi.encodePacked(_j));
    }
}