// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import {stdStorage, StdStorage, Test} from "@std/Test.sol";

import {Utils} from "./utils/Utils.sol";

contract BaseSetup is NFP, Utils {
    Utils internal utils;
    address payable[] internal users;

    address internal jim;
    address internal max;

    function setUp() public virtual {
        utils = new Utils();
        users = utils.createUsers(5);

        jim = users[0];
        vm.label(jim, "Jim");
        max = users[1];
        vm.label(max, "Max");
    }
}
