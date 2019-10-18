namespace my.bookshop;

using { cuid, managed, Country } from '@sap/cds/common';

//Books entity
entity Books {
  key ID : Integer;
  title  : String;
  stock  : Integer;
  //Association to author
  author: Association to Authors;
}

//Authors
entity Authors {
  key ID : Integer;
  name   : String;
  //Assocatio to the books
  books  : Association to many Books on books.author = $self;
}

//Book orders
//entity Orders {
//  key ID   : UUID;
//  book     : Association to Books;
//  quantity : Integer;
//}

entity Orders : cuid, managed {
  book     : Association to Books;
  quantity : Integer;
  country  : Country;
}