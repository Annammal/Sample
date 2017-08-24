pragma solidity ^0.4.8;

contract Parties {
    enum Party{
      Manufacturer,
      Merchant,
      Distributor,
      Shop_keeper,
      consumer
    }

  Party public partyType; //merchant, manufacturer, shop keeper, consumer etc
  string public partyId; //like Manufacturer ID
  uint public newPriceProduct; // product price as per parties
  string public soldDate; // product sold date
  address public productAddress; // product address


  function Parties(uint _type, string _id, uint _price, string _date, address _product){
    setPartype(_type);
    partyId =  _id;
    newPriceProduct = _price;
    soldDate = _date;
    productAddress = _product;
  }

  function getProductAddress() constant returns(address)
  {
    return productAddress;
  }

  function getAllInfo() constant returns(Party, string, uint, string, address)
  {
    return (partyType, partyId, newPriceProduct, soldDate, productAddress);
  }

  function setPartype(uint _type) internal
  {
       if( _type == 1 ){
        partyType = Party.Merchant;
        }
         if( _type == 2 ){
        partyType = Party.Distributor;
        }
        if( _type == 3 ){
        partyType = Party.Shop_keeper;
        }
        if( _type == 4 ){
        partyType = Party.consumer;
        }
  }
}
