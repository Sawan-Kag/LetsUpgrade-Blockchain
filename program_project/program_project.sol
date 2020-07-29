 pragma solidity >=0.5.0 <0.6.0;
/* 1. It is a solidity contract  for School markSheet which is deployed on ropsten test network 

   2. Contract Address ==> 0x62EC7a745AcAFB38e6743A1A71E814E8e4E34bd7
   
   3. Ropsten test network  test n Contract link ==>https://ropsten.etherscan.io/address/0x62ec7a745acafb38e6743a1a71e814e8e4e34bd7
   
   4. School Address 0x1b47303d2243E076C0573FD52A47E3813aeD13f5
   
   5. Names of studend regestered by school is [Pranav verma , Sawan kag ,Lucky]
   
   6. Roll numbers of Students=[1111 ,2222, 3333]
      
*/   
contract school {
    
    struct Students{
        
        uint256 roll_Number;
        string Name;
        string Batch;
    
    }
    
    
    uint public No_of_students;
    uint[] private Roll_Numbers;
    Students[] private student;
    mapping (uint256 => uint ) stdAdd ;
    mapping(string => uint256)nam;
    function Get_Roll_number(string memory _naam)public view returns(uint256){
    return nam[_naam];
    }
  
    //this function can Only used by Sschool
    function  New_Student(uint256 _Roll_Number,string memory _name, string memory _batch) public {
        
        require(msg.sender == 0x1b47303d2243E076C0573FD52A47E3813aeD13f5, "You are Not Authorized to Register New Student" );
        No_of_students =student.push(Students(_Roll_Number,_name, _batch));
        uint _count =No_of_students-1;
        stdAdd[_Roll_Number] = _count; 
        nam[_name]=_Roll_Number;
     
    }
    
    
    function Student_Details(uint256 _Roll_Number) public view returns( string  memory Name , string memory Batch ) {//This function is public for Students
        
        return  (student[stdAdd[_Roll_Number]].Name, student[stdAdd[_Roll_Number]].Batch);
        
    }
     
     struct ReportCards {
         
         uint sub1Marks;
         uint sub2Marks;
         uint sub3Marks;
         uint sub4Marks;
         
         }
         
         ReportCards[100] private reportCard;
         
         function Update_Marks(uint256 _Roll_Number, uint Subject_1_marks, uint Subject_2_mark, uint Subject_3_mark, uint Subject_4_mark) public  {
            
             require(msg.sender == 0x1b47303d2243E076C0573FD52A47E3813aeD13f5, "You are Not Authorized " );
            reportCard[stdAdd[_Roll_Number]]=(ReportCards( Subject_1_marks,Subject_2_mark,Subject_3_mark,Subject_4_mark)); 
             
         }
         
         
         function Result(uint256 _Roll_Number) public view returns( string memory Student_Name, uint Subject_1_marks, uint Subject_2_mark, uint Subject_3_mark ,uint Subject_4_mark, string memory Status){
             
             string memory status ="FAIL";
             uint percentage = (reportCard[stdAdd[_Roll_Number]].sub1Marks +reportCard[stdAdd[_Roll_Number]].sub2Marks +reportCard[stdAdd[_Roll_Number]].sub3Marks +reportCard[stdAdd[_Roll_Number]].sub4Marks) /4;
             if( percentage >=33){
                 status = "PASS";
                  }
    
             return (student[stdAdd[_Roll_Number]].Name, reportCard[stdAdd[_Roll_Number]].sub1Marks, reportCard[stdAdd[_Roll_Number]].sub2Marks, reportCard[stdAdd[_Roll_Number]].sub3Marks, reportCard[stdAdd[_Roll_Number]].sub4Marks, status);
         }    
         
    
    
}
