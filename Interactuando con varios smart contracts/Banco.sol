//Especificamos la version
pragma solidity >=0.4.4 <0.7.0;

contract Banco{

    struct Cliente{
        string nombre;
        address direccion;
        uint dinero;
    }

    mapping(string => Cliente) clientes;

    function nuevoCliente(string memory _nombre) public {
        clientes[_nombre] = Cliente(_nombre,msg.sender,0);
    }
}

contract Banco2{

}

contract Banco3{
    
}