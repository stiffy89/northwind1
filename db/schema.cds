using {sap} from '@sap/cds/common';
using {Northwind as external} from '../srv/external/Northwind';

namespace Catalog;

define entity Products : external.Products {
    DateDisp : String (10);
    ReleaseDays : String (40);
    RatingCriticality : Integer;
}