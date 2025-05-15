// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract CommunityToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("CommunityToken", "CTK") {
        _mint(msg.sender, initialSupply * (10 ** decimals()));
    }

    // 서버 지갑(소유자)만 호출 가능: 토큰 추가 발행
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount * (10 ** decimals()));
    }
}