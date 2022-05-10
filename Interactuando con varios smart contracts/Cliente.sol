//Especificamos la version
pragma solidity >=0.4.4 <0.7.0;
import "./Banco.sol";
//import {Banco} from "./Banco.sol";
contract Cliente is Banco{

    function crearCliente(string memory _nombre) public{
        nuevoCliente(_nombre);
    }

    function ingresarDinero(string memory _nombre, uint _cantidad) public{
        clientes[_nombre].dinero += _cantidad;
    }

    function retirarDinero(string memory _nombre, uint _cantidad) public returns (bool){
        if(_cantidad <= clientes[_nombre].dinero){
            clientes[_nombre].dinero -= _cantidad;
            return true;
        }
        return false;
    }

    function consultarDinero(string memory _nombre) public view returns(uint) {
        return clientes[_nombre].dinero;
    }

}