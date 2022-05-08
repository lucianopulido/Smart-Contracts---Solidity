pragma solidity >= 0.4.4 < 0.7.0;
pragma experimental ABIEncoderV2;
contract Mappings{

  // Declaramos un mapping para elegir un número

  mapping (address => uint) public direccion_edad;

  function elegirNumero(uint _numero) public{
    direccion_edad[msg.sender] = _numero;
  }

  function consultarNumero()public view returns(uint){
      return direccion_edad[msg.sender];
  }

  // Declaramos un mapping que relaciona el nombre de una persona con el dinero que cobra

  mapping(string => uint) cantidadDinero;

  function ingresarDinero(string memory _nombre, uint _cantidad) public {
      cantidadDinero[_nombre] = _cantidad; 
  }

  function consultarDinero(string memory _nombre) public view returns (uint){
      return cantidadDinero[_nombre];
  }

  struct Persona{
      uint id;
      string nombre;
      uint edad;
  }

  mapping(uint => Persona) personas;

  function ingresarPersona(uint _dni, uint _id, string memory _nombre, uint _edad) public {
      personas[_dni] = Persona(_id, _nombre, _edad);
  }

  function obtenerPersona(uint _dni) public view  returns  (Persona memory){
      return personas[_dni];
  }
}