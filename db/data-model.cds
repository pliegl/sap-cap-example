namespace my.bookshop;

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