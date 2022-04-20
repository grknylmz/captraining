using captraining as captraining from '../db/data-model';

service OrderService {
    @readonly
    entity Customer as projection on captraining.Customers;

    @odata.draft.enabled
    entity Orders   as projection on captraining.Orders;
}
