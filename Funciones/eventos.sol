//Especificamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Eventos{

    //Declaramos los eventos a utilizar
    event nombre_evento1 (string _nombrePersona);
    event nombre_evento2 (string _nombrePersona, uint _edadPersona);
    event nombre_evento3 (string , uint, address, bytes32);
    event abortarMisionEvento();
    
    
    function emitirEvento1(string memory _nombrePersona) public {
        emit nombre_evento1(_nombrePersona);
    }

    function emitirEvento2(string memory _nombrePersona, uint _edadPersona) public {
        emit nombre_evento2(_nombrePersona, _edadPersona);
    }

    function emitirEvento3(string memory _nombrePersona, uint _edadPersona) public {
        bytes32 hash = keccak256(abi.encodePacked(_nombrePersona, _edadPersona, msg.sender));
        emit nombre_evento3(_nombrePersona, _edadPersona, msg.sender, hash);
    }

    function abortarMision()public{
        emit abortarMisionEvento();
    }
}