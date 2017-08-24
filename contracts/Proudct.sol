pragma solidity ^0.4.8;

contract Product{

    string productUniqueID;
    string productName;
    string productPrice;
    string productQuantity;
    string productProducedDate;
    string manufacturerID;

    function Product(string _id, string _name, string _price, string _quan, string _date, string _mid){
        productUniqueID = _id;
        productName = _name;
        productPrice = _price;
        productQuantity = _quan;
        productProducedDate = _date;
        manufacturerID = _mid;
    }

    function getProductInfo()constant returns (string, string, string, string, string, string)
    {
      return (productUniqueID, productName, productPrice, productQuantity, productProducedDate, manufacturerID);
    }
}
