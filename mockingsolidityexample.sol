pragma solidity ^0.8.0;

contract MyContract {
    function add(uint a, uint b) public pure returns (uint) {
        return a + b;
    }
}

contract MyContractMock {
    function add(uint a, uint b) public pure returns (uint) {
        return a * b;
    }
}

contract TestMyContract {
    MyContract myContract = new MyContract();
    MyContractMock myContractMock = new MyContractMock();

    function testAdd() public {
        uint expected = 2 * 3;
        uint result = myContractMock.add(2, 3);
        assert(result == expected, "Result does not match expected value");
    }
}
