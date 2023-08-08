using CatalogService as service from '../../srv/catalog-service';

annotate service.Products with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Product Name',
            Value : Name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Product Description',
            Value : Description,
        }
    ]
);