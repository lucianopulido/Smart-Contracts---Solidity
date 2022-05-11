// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.4 < 0.9.0;
pragma experimental ABIEncoderV2;

contract Require{

    //Funcion que verifique la contraseña
    function password(string memory _password) public pure returns (string memory) {
        require((keccak256(abi.encodePacked(_password)) == keccak256(abi.encodePacked("123456"))), "Password incorrecto");
        return "Password Correcta";
    }

    //Funcion para pagar

    uint public cartera = 0;
    uint tiempo = 0;
    function pagar(uint _cantidad) public returns(uint){
        require(block.timestamp> tiempo + 5 seconds,"Aun no puedes pagar");
        tiempo = block.timestamp;
        cartera += _cantidad;

        return cartera;
    }

    string [] nombres;

    function nuevoNombre(string memory _nombre) public{
        for(uint i=0; i<nombres.length;i++){
            require((keccak256(abi.encodePacked(_nombre)) != keccak256(abi.encodePacked(nombres[i]))),"ya esta en la lista");
        }
        nombres.push(_nombre);
    }


}