using { Supplier_Onboarding_Extension as my } from '../db/schema.cds';

@path : '/service/Supplier_Onboarding_ExtensionService'
service Supplier_Onboarding_ExtensionService
{
    @cds.redirection.target
    @odata.draft.enabled
    entity Suppliers as
        projection on my.Suppliers;

    @cds.redirection.target
    @odata.draft.enabled
    entity Registrations as
        projection on my.Registrations;

    @cds.redirection.target
    @odata.draft.enabled
    entity SupplierContacts as
        projection on my.SupplierContacts;
}

// annotate Supplier_Onboarding_ExtensionService with @requires :
// [
//     'authenticated-user'
// ];
