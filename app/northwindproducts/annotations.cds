using CatalogService as service from '../../srv/catalog-service';

annotate service.Products with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Product Name',
            Value : Name,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Product Description',
            Value : Description,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Price',
            Value : Price,
            ![@UI.Importance] : #High,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Rating',
            Value : Rating
        }
    ]
);

annotate service.Products with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : Name,
        },
        TypeName : 'Product',
        TypeNamePlural : 'Products',
        Description : {
            $Type : 'UI.DataField',
            Value : Description,
        },
    }
);
annotate service.Products with @(
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Product Information',
            ID : 'ProductInformation',
            Target : '@UI.FieldGroup#ProductInformation',
        },
    ],
    UI.FieldGroup #ProductInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Description,
                Label : 'Description',
            },{
                $Type : 'UI.DataField',
                Value : DiscontinuedDate,
                Label : 'DiscontinuedDate',
            },{
                $Type : 'UI.DataField',
                Value : ID,
                Label : 'ID',
            },{
                $Type : 'UI.DataField',
                Value : Name,
                Label : 'Name',
            },{
                $Type : 'UI.DataField',
                Value : Price,
                Label : 'Price',
            },{
                $Type : 'UI.DataField',
                Value : Rating,
                Label : 'Rating',
            },{
                $Type : 'UI.DataField',
                Value : ReleaseDate,
                Label : 'ReleaseDate',
            },],
    }
);
annotate service.Products with @(
    UI.FieldGroup #Suppliers : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);
