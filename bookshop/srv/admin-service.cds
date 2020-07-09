using { sap.capire.bookshop as my } from '../db/schema';
service AdminService @(requires_:'admin') {
     
  entity Books @readonly @(restrict: [
    { grant: ['READ'], to: 'admin', where: 'localized_de_AdminService_Books.genre_ID = $user.genre_ID'}]) as projection on my.Books;
  entity Authors as projection on my.Authors;



}
