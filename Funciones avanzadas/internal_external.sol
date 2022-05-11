// SPDX-License-Identifier: MIT
pragma solidity >= 0.4.4 < 0.9.0;

contract Comida{

    struct Plato{
        string nombre;
        string ingredientes;
        uint tiempo;
    }

    Plato [] platos;

    // relacionamos nombre del plato con sus ingredientes
    mapping(string => string) ingredientes;

    function nuevoPlato(string memory _nombre, string memory _ingredientes, uint _tiempo) internal{
        platos.push(Plato(_nombre,_ingredientes,_tiempo));
        ingredientes[_nombre] = _ingredientes;
    }

    function obtenerIngredientesDelPlato(string memory _nombre) internal view returns(string memory){
        return ingredientes[_nombre];
    }

}

contract Sandwich is Comida{

    function crearSandwich( string memory _ingredientes , uint _tiempo) external{
        nuevoPlato("Sandwich",_ingredientes,_tiempo);
    }

    function verIngredientes() external returns(string memory){
        return obtenerIngredientesDelPlato("Sandwich");
    }
}