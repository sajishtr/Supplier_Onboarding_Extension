using Supplier_Onboarding_ExtensionService as service from '../../srv/service';
annotate service.Suppliers with @(
    UI.HeaderInfo : {
        TypeName : 'Supplier',
        TypeNamePlural : 'Suppliers',
        Title : {
            $Type : 'UI.DataField',
            Value : supplierName
        }
    },
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Supplier Name',
                Value : supplierName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Legal Name',
                Value : legalName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Tax ID',
                Value : taxId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Country',
                Value : country,
            },
            {
                $Type : 'UI.DataField',
                Label : 'City',
                Value : city,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Email',
                Value : email,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Phone',
                Value : phone,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Status',
                Value : status,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Supplier Name',
            Value : supplierName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Legal Name',
            Value : legalName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Tax ID',
            Value : taxId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Country',
            Value : country,
        },
        {
            $Type : 'UI.DataField',
            Label : 'City',
            Value : city,
        },
    ],
);