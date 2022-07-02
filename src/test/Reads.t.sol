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
        vm.startPrank(max);
        this.setEdition(_edId, _supply, price, claimPrice, uri);
        vm.stopPrank();
    }

    function test_mint(uint256 numMints, uint256 edId) public {
        vm.startPrank(jim);
        vm.assume(this._editionExists(edId));
        vm.assume(numMints > 0);
        vm.assume(numMints <= max_mint);
        vm.roll(55);
        Edition memory ed = this.getEdition(edId);
        this.mintPerson{value: ed.price * numMints}(numMints, edId);
    }
}
