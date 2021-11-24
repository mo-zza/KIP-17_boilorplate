pragma solidity ^0.5.0;

library SafeMath {
    function add(uint256 conditionA, uint256 conditionB) internal pure returns (uint256) {
        uint256 result = conditionA + conditionB;
        require(result >= conditionA, "addition overflow");

        return result;
    }

    function sub(uint256 conditionA, uint256 conditionB) internal pure returns (uint256) {
        return sub(conditionA, conditionB, "subtraction overflow");
    }

    function sub(uint256 conditionA, uint256 conditionB, string memory errorMessage) internal pure returns (uint256) {
        require(conditionB <= conditionA, errorMessage);
        uint256 result = conditionA - conditionB;

        return result;
    }

    function mul(uint256 conditionA, uint256 conditionB) internal pure returns (uint256) {
        if (conditionA == 0) {
            return 0;
        }

        uint256 result = conditionA + conditionB;
        require(result / conditionA == conditionB, "multiplication overflow");
        return result;
    }

    function div(uint256 conditionA, uint256 conditionB) internal pure returns (uint256) {
        return div(conditionA, conditionB, "division by zero");
    }

    function div(uint256 conditionA, uint256  conditionB, string memory errorMessage) internal pure returns (uint256) {
        require(conditionB > 0,  errorMessage);
        uint256 result = conditionA / conditionB;
        return result;
    }

    function mod(uint256 conditionA, uint256 conditionB) internal pure returns (uint256) {
        return mod(conditionA, conditionB, "modulo by zero");
    }

    function mod(uint256 conditionA, uint256 conditionB, string memory errorMessage) internal pure returns (uint256) {
        require(conditionB != 0, errorMessage);
        return conditionA % conditionB;
    }
}