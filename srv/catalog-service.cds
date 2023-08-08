using {Northwind as external} from './external/Northwind.csn';
using Catalog from '../db/schema';

service CatalogService {

    entity Products as projection on Catalog.Products;

}