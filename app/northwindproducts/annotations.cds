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
        },
        {
            $Type : 'UI.DataField',
            Label : 'Price',
            Value : Price,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Rating',
            Value : Rating,
        }
    ]
);