pragma solidity 0.5.1;                                               //pragma is used for declaring compiler version

contract Practise{
    
    struct Student                                                  // struct name not same as class name
    {
        string name;                                                // by default - temporary variables
        uint age;
        string rno;
        string class;
    }  
    
    address public index;
    
    mapping(address => Student) public students;                   // holds multiple students of structure, doesnt allocate sequentially like an array, that is why memory efficient
    
    address[] public candidates;            // An array of addresses is created to store the addresses of the structure, each address is bound with a structure
    
    function createStudent(string memory _name, uint _age, string memory _rno, string memory _class, address _index) public returns(bool)
    {
       Student storage s = students[_index];                 // memory keyword is needed as the variable is temporary, stores only 1 student, we need to make it permanent - storage
       s.name = _name;
       s.age = _age;
       s.rno = _rno;
       s.class = _class;
       candidates.push(_index);
       
       return true;    
    }
    
    function getStudent(address _index) public view returns(string memory, uint, string memory, string memory)
    {
        return (students[_index].name, students[_index].age, students[_index].rno, students[_index].class);
    }
}