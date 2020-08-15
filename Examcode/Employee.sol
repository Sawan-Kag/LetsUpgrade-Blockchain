pragma solidity >=0.4.22 <0.7.0;
// Contract Addres 0x309c40ab857948ad05521677b66cc59a27dd780f
contract Data
{
          string public Employee_Name;
          int public  Employee_ID;
          string public Company_name;
          string public Department;
    constructor (string employee_Name, int employee_ID,string company_name,string department )public
    {
       Employee_Name=employee_Name;
       Employee_ID=employee_ID;
       Company_name=company_name;
       Department=department;
       
    }
}
