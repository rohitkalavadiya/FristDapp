// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Funder {
    uint256 public numOfFunder;

    mapping(uint256 => address) public funders;

    receive() external payable {}

    function transfer() external payable {
        funders[numOfFunder] = msg.sender;
    }

    function withdraw(uint256 withdrawAmount) external {
        require(withdrawAmount <= 8000000000000000000,"you can not withdraw more than 5 ether");
        payable(msg.sender).transfer(withdrawAmount);
    }
}
