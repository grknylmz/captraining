using captraining as captraining from '../db/data-model';

service CatalogService {
    entity Customer as projection on captraining.Customers;
    entity Orders   as projection on captraining.Orders;
}


