namespace captraining;

using {
    cuid,
    managed
} from '@sap/cds/common';


entity Customers : cuid, managed {
    name    : String;
    email   : String(30);
    phone   : String(15);
    address : String;
}

entity Products : cuid, managed {
    name  : String;
    price : Integer;
}

entity Orders : cuid, managed {
    customer    : Association to Customers;
    description : String;
    sum         : Integer;
    items       : Composition of many Orders2Items
                      on items.order = $self;
}

entity Orders2Items : cuid {
    order   : Association to Orders;
    product : Association to Products;
}
