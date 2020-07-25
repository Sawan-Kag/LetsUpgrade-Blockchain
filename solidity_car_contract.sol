pragma solidity >=0.4.17 <0.7.0;
contract car{
    string carOwner;
    function car(string newOwner)public
    {
        carOwner=newOwner;
    }
    function setDetails(string newOwner)public
    {
        carOwner=newOwner;
    }
    function getDetails()public view returns(string)
    {
        return(carOwner);
    }
}
