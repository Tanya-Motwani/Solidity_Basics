pragma solidity 0.5.1;   //pragma is used for declaring compiler version

contract example{
    
    string private name;
    uint private age;
    string private rno;
    string private class; 
    
    
    function setName (string memory _name) public returns (bool)    // will store in memory not storage
    {
        name = _name;
        return true;
    }    
    
    function getName() public view returns (string memory)  // view will not change your state, just access your smart contract [others- pure]
    {
        return name;
    }
    
    function setValue (string memory _rno, string memory _class, uint _age) public returns (bool) // memory not compatible with uint
    {
        rno = _rno;
        class = _class;
        age = _age;
        return true;
    }    
    
    function getValue() public view returns (string memory, string memory, uint)  
    {
        return (rno, class, age);
    }
    
}