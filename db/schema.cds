using {sap} from '@sap/cds/common';
using {Northwind as external} from '../srv/external/Northwind';

namespace Catalog;

/* define entity Products {
   key ID : external.Products:ID;
       Name : external.Products:Name;
       Description : external.Products:Name;
       Price : external.Products:Price;
       Supplier : Association to external.Suppliers;
} */

define entity Products : external.Products {
    
}
