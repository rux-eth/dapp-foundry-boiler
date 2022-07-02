// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import {BaseSetup} from "./BaseSetup.sol";

contract Writes is BaseSetup {
    uint256 _edId = 1;
    uint64 _supply = 500;
    uint64 price = 0.08 ether;
    uint64 claimPrice = 0.02 ether;
    string uri = "ipfs://";
    uint256 max_mint = 10;

    function setUp() public virtual override {
        BaseSetup.setUp();
    }
}
