pragma solidity ^0.4.25 ;
// Contract Addres  0x49325a9Df048A7E294Db68BdDC71e6950f14Dd0b 
contract Ticket {
    
    string public trainName;
    string public startPoint;
    string public endPoint;
    string public seatNo;
    string public trainId;
    string public passengerName;
    uint public price;
     constructor ( string memory _trainName, string memory _startPoint, string memory _endPoint ,string memory _seatNo ,string memory _trainId, uint _price, string memory  _passengerName) public {
        passengerName = _passengerName;
         trainName = _trainName;
         startPoint = _startPoint;
         endPoint = _endPoint;
         seatNo = _seatNo; 
         trainId = _trainId;
         price = _price;
      }
    
    
}
