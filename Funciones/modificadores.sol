//Especificamos la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract view_pure_payable{

    // Modificador view

    string [] lista_alumnos;
    
    function nuevo_alumno(string memory _alumno) public  {
        lista_alumnos.push(_alumno);
    } 

    function ver_alumno(uint _posicion) public view returns(string memory){
        return lista_alumnos[_posicion];
    }

    uint x = 10;

    function sumar(uint _y) public view returns (uint){
        return x + _y;
    }

    // Modificador pure

    function exponenciacion(uint _num1, uint _num2) public pure returns(uint) {
        return _num1 **_num2;
    }

    // Modificador payable

    mapping(address => Cartera) saldoCartera;

    struct Cartera{
        string nombre;
        address direccion;
        uint saldo;
    }

    function pagar(string memory _nombre, uint _dinero) public payable {
        Cartera memory cartera  = Cartera(_nombre,msg.sender,_dinero);
        saldoCartera[msg.sender] = cartera;
    }

    function verSaldo() public view returns(Cartera memory){
        return saldoCartera[msg.sender];
    }
}