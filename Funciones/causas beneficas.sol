//Especificamos la version
pragma solidity >=0.4.4 <0.7.0;

contract CausasBeneficas{

    // Declaraciones necesarias
    struct Causa{
        uint id;
        string nombre;
        uint recaudacion_objetivo;
        uint dinero_recaudado;
    }

    uint contador_causas = 0;

    mapping(string => Causa) causas;

    // Permite dar de alta una nueva causa
    function nuevaCausa(string memory _nombre, uint _recaudacion_objetivo) public payable{
        contador_causas = contador_causas++;
        causas[_nombre] = Causa(contador_causas,_nombre,_recaudacion_objetivo,0);
    }

    // Esta funcion nos permite donar a una causa
    function donar(string memory _nombre, uint _cantidad) public returns(bool){
        if(causas[_nombre].dinero_recaudado < causas[_nombre].recaudacion_objetivo){
            causas[_nombre].dinero_recaudado += _cantidad;
            return true;   
        }
        return false;
    }

    // Esta funcion comprueba si se cumplio el objetivo de la causa

    function comprobarCausa(string memory _nombre) public view returns(bool,uint){
         if (causas[_nombre].dinero_recaudado >= causas[_nombre].recaudacion_objetivo){
             return (true,causas[_nombre].dinero_recaudado);
         }
         return (false,causas[_nombre].dinero_recaudado);
    }
}