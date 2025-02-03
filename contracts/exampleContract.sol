// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

import "@openzeppelin/contracts/access/AccessControl.sol";

contract ejemplo is AccessControl {

    bytes32 private valorpublico = keccak256("Nombre de usuario");
    bytes32 private valorPrivado = keccak256("Password");

    function FuncionPublica() public view returns (bytes32) {
        return valorpublico;
    }

    function FuncionPrivada() public view onlyRole(DEFAULT_ADMIN_ROLE) returns (bytes32) {
        return valorPrivado;
    }

}