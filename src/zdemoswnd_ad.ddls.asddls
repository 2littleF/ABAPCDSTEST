@AbapCatalog.sqlViewName: 'ZDEMOSWNDAD'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Adressen'
define view ZDEMOSWND_AD as select from snwd_ad {
    key node_key as NodeKey,
    city as City,
    postal_code as PostalCode,
    street as Street,
    building as Building,
    country as Country
}
