pragma solidity >= 0.4.4 < 0.7.0;

contract Ejemplos_enumeraciones{

    // Enumeraciones de interruptor
    enum estado {ON,OFF}

    // Variable de tipo enum
    estado state;

    function escender()public{
        state = estado.ON;
    }

     function apagar()public{
        state = estado.OFF;
    }

    function fijar_estado(uint _k)public{
        state = estado(_k);
    }

    function Estado() public view returns(estado){
        return state;
    }

    // enumeraciones de direcciones
    enum direcciones {ARRIBA,ABAJO,DERECHA,IZQUIERDA}

    direcciones direccion = direcciones.ARRIBA;

    function arriba() public{
        direccion = direcciones.ARRIBA;
    }

     function abajo() public{
        direccion = direcciones.ABAJO;
    }

     function derecha() public{
        direccion = direcciones.DERECHA;
    }

     function izquierda() public{
        direccion = direcciones.IZQUIERDA;
    }

      function fijar_direccion(uint _k)public{
        direccion = direcciones(_k);
    }

      function Direccion() public view returns(direcciones){
        return direccion;
    }

}