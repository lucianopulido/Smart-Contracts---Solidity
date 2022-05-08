pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Funciones{

    // agregar dentro de un array de direcciones, la dirección de la persona que llama a la funcion

    address [] public direcciones;

    function nuevaDireccion() public{
        direcciones.push(msg.sender);
    }

    bytes32 public hash;

    function calularHash(string memory _datos) public {
        hash = keccak256(abi.encodePacked(_datos));

    }

    struct Comida {
        uint id;
        string nombre;
        string ingredientes;
    }

    Comida public hamburguesa;

    function crearHamburguesa(string memory _ingredientes) public {
        hamburguesa = Comida(1,"Hamburguesa",_ingredientes);
    }

    struct Alumno{
        uint id;
        string nombre;
        address direccion;
        uint edad;
    }

    bytes32 public hash_id_alumno;
    Alumno [] public alumnos;
    mapping( string => bytes32) public alumno_hash;

    function nuevoAlumno(uint _id, string memory _nombre, uint _edad )public{
        alumnos.push(Alumno(_id,_nombre,msg.sender,_edad));
        hashIdAlumno(_id,_nombre,msg.sender,_edad);
        alumno_hash[_nombre] = hash_id_alumno;
    }

    function hashIdAlumno(uint _id, string memory _nombre, address _direccion, uint _edad) private {
        hash_id_alumno = keccak256(abi.encodePacked(_id, _nombre, _direccion, _edad));
    }
}