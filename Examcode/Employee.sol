pragma solidity >=0.4.22 <0.7.0;
//Contract Addres 0xe811f7cf98d6f652c18bca2a24a72f82f1135371
contract Data
{
          string public Employee_Name;
          int public  Employee_ID;
          string public Company_name;
          string public Department;
    function Employee_Data (string employee_Name, int employee_ID,string company_name,string department )public
    {
       Employee_Name=employee_Name;
       Employee_ID=employee_ID;
       Company_name=company_name;
       Department=department;
       
    }
}
