pragma solidity >= 0.4.4 < 0.7.0;


contract enteros{

    // variables enteras sin signo
    uint mi_primer_entero;
    uint mi_primer_entero_inicializado = 3;
    uint cota = 5000;

    // variables enteras sin signo con un número especifico de bits
    uint8 entero_8_bits;
    uint16 entero_16_bits;
    uint64 entero_64_bits = 7000;
    uint256 entero_256_bits;

    // variables enteras con signo
    int mi_primer_entero_con_signo;
    int mi_numero = -32;
    int mi_numero_positivo = 64;

    // variables enteras con signo con un número especifico de bits
    int72 numero_con_signo_72_bits;
    int240 numero_con_240_bits = 90000;
    int numero_256_bits;

}
