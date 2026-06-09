// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0 ;

contract StudentRegistration {

    uint public Totalstudent ;

    address public owner ;
    
    student[] public students ;

    struct student {
        uint Rollnumber ; 
        string name ;
        uint markes ;
    }

constructor() {
    owner = msg.sender ; 
}

function SetStudents (uint Rollnumber , string memory name , uint markes ) public {
    require(msg.sender == owner , " only owner can call this function ");
students.push(student(Rollnumber , name , markes )) ;
Totalstudent = Totalstudent +1 ; 

} 

function getstuudent (uint _Rollnumber )  public view returns (uint , string memory , uint  ) {
    for(uint i = 0 ; i < students.length; i++ ) {
if(students[i].Rollnumber == _Rollnumber ) {
    return (
        students[i].Rollnumber ,
        students[i].name ,
        students[i].markes  
    );
}
    } 

}

}