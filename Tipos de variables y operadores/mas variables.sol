pragma solidity >= 0.4.4 < 0.7.0;
pragma experimental ABIEncoderV2;

contract mas_variables{

    // Variables string
    string mi_primer_string;
    string public saludo = "hola como estas";
    string public cadena_vacia = "";
    string public nombre = "Luciano";

    // Variables booleanas
    bool mi_primer_booleano;
    bool public flag_true = true;
    bool public flag_false = false;

    // Variables de tipo Byte
    bytes32 mi_primer_bytes;
    bytes4 segundo_bytes;
    bytes32 public hash = keccak256(abi.encodePacked(nombre));
    bytes4 public identificador;

    function ejemploBytes4() public{
        identificador = msg.sig;
    }

    // Variables Address
    address mi_primera_direccion;
    address public direccion_local_1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public direccion_local_2 = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
    
}