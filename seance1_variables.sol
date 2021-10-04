// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; //La ligne specifiant la version

contract Ecole {
    uint public element;

    constructor(uint _element){
        element = _element;
    }
/*
    I - type de variable
        1 - Nombre (entiers, décimaux)
        int = [-infini , +infini]
        uint = [0, +infini]

        2 - Chaine de caractère (mots)
        Bonjour, Bonsoir,
        string

        3 - Address
        "0x40b43d492bed2Fa90B30CA1618530c1a6b7601C7"
        11 = "0xB"
        address

        4 - booleen
        vrai ou faux
        true(1) ou false(0)
        bool

        5 - 1 OCTET = 1 byte = 8 bits
        Il joue le role de tableau
        bytes //check en profondeur

    II - DECLARATION
    TYPE NOM;
    Les noms des variables sont soumis à des contraintes
    - sans accent
    - sans caractères speciaux ($-`", ...)
    - sans espace
    - ne pas commencé par un chiffre

*/
    string private pokemonName = "Picachou";
    uint internal pokemonAge = 10;
    //(internal/external)  -> public
    address  pokemonAdress = 0x40b43d492bed2Fa90B30CA1618530c1a6b7601C7;
    bool public haveMaster = true;

    function test() external pure returns(uint){
        return 10;
    }


    function test2() public view returns (uint){
        uint ma_var = this.test();
        return ma_var;
    }

 /*
    III-  Visibilité

     - Peut etre appélé de partout :  public
     - Uniquement les personnes de la maison : private
     - Les habitants de la maison et leurs enfants : internal
     - Toutes les personnes hors de la maison: external

     (internal/external)  -> public

    IV - Exigence
     - Exigence de paiement

    - pure : Manipule uniquement les variables envoyées en parametre ou declaré en
    - view : Ne modifie aucune variable en parametre et à l'exterieur

    LINK :

    - https://blog.oliverjumpertz.dev/solidity-visibility-modifiers
    - https://bitsofco.de/solidity-function-visibility-explained/
*/


/*
    todo
    - chercher la difference entre external et public
    - manipuler les types bytes
    - Manipuler les tabelaux , les maps ...
*/


/*
    todo
    - function ...
    - conditions
    - boucles
*/



}


contract B {
    function b_test() public  returns (uint){
        Ecole _ecole_gatta =  new Ecole(2);
        return _ecole_gatta.test();
    }
}
