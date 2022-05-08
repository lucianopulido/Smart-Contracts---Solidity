pragma solidity >= 0.4.4 < 0.7.0;

contract Estructuras{

    //Cliente de una página web de pago
    struct Cliente{
        uint id;
        string name;
        string dni;
        string email;
        uint phone;
        uint credit_number;
        uint secret_number;
    }

    Cliente cliente = Cliente(1,"Luciano","12345678","luciano@gmail.com",1144558877,45889789,456);

    // Productos de Amazon
    struct Producto{
        uint id;
        string name;
        uint price;
    }

    Producto producto = Producto(1,"Samsung",200);

    // proyecto de ONG
    struct ONG{
        uint id;
        address ong;
        string name;
    }

    ONG caritas = ONG(1,0x5B38Da6a701c568545dCfcB03FcB875f56beddC4,"Caritas");

    struct Causa{
        uint id;
        string name;
        uint target_price;
    }
    
    Causa medicamentos = Causa(1,"medicamentos",1000);


}