@AbapCatalog.sqlViewName: 'ZDEMOSNWDBPART'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Geschäftspartner mit Infos'
define view Zdemosnwd_Bpartner as select from ZDEMOSNWD_BP as BP
left outer to one join ZDEMOSNWD_AD as AD
    on BP.AdressGuid = AD.NodeKey {
     key BP.NodeKey,
     BP.BpRole,
     BP.EmailAddress,
     BP.PhoneNumber,
     BP.WebAddress,
     BP.BpId,
     BP.CompanyName,
     BP.LegalForm,
     BP.CurrencyCode,
     AD.City,
     AD.PostalCode,
     AD.Street,
     AD.Building,
     AD.Country
}
