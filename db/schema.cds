namespace Supplier_Onboarding_Extension;

entity Suppliers {
    key ID : UUID;
    supplierName : String;
    legalName : String;
    taxId : String;
    country : String;
    city : String;
    email : String;
    phone : String;
    status : String;

    // supplierContacts : Association to many SupplierContacts on supplierContacts.supplier = ID;
    // registrations : Association to many Registrations on registrations.supplier = ID;

    supplierContacts : Association to many SupplierContacts
    on supplierContacts.supplier = $self;

    registrations : Association to many Registrations
    on registrations.supplier = $self;
}

entity SupplierContacts {
    key ID : UUID;
    firstName : String;
    lastName : String;
    email : String;
    phone : String;
    role : String;

    supplier : Association to Suppliers;
}

entity Registrations {
    key ID : UUID;
    registrationDate : Date;
    registrationStatus : String;
    comments : String;

    supplier : Association to Suppliers;
}