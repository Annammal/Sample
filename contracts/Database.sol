pragma solidity ^0.4.8;

contract Database  {
  address[] public products;
  //address[] public parties;

  address[] public allParties;

  mapping(uint => address[]) public parties;

  function Database() {}

  //products
  function storeProduct(address productAddress) {
    products.push(productAddress);
  }

  function getStoredProductCount()constant returns (uint){
    return products.length;
  }

  function getStoredProductByIndex(uint _index)constant returns (address){
    return products[_index];
  }

  function getAllStoredProduct() constant returns (address[])
  {
    return products;
  }

  //parties
  function storeParty(uint _party, address _partyAddress){
    address[] storage p = parties[_party];
    p.push(_partyAddress);
    parties[_party]=p;
  }

  function getStoredPartiesCountByPartyType(uint _party) constant returns(uint)
  {
    return parties[_party].length;
  }

  function getAllStoredParty()constant returns (address []){
    concatenateArrays(parties[0]);
    concatenateArrays(parties[1]);
    concatenateArrays(parties[2]);
    concatenateArrays(parties[3]);
    concatenateArrays(parties[4]);

    return allParties;
  }

  function concatenateArrays(address[] party) internal {
       for (uint i=0; i < party.length; i++) {
           allParties.push(party[i]);
       }

   }

  function getStoredAllPartiesByType(uint _party) constant returns(address [])
  {
    return parties[_party];
  }
}
