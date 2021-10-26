@AbapCatalog.sqlViewName: 'ZDEMOSNWDBP'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Geschäftspartner'
@OData.publish: true
define view ZDEMOSNWD_BP
  as select from snwd_bpa
  association [0..1] to ZDEMOSNWD_AD as _Address on $projection.address_guid = _Address.NodeKey
{
  key node_key                 as NodeKey,
      bp_role                  as BpRole,
      cast( case (bp_role)
          when '01' then 'Customer'
          when '02' then 'Supplier'
          else ' '
      end as abap.char( 10 ) ) as Role,
      email_address            as EmailAddress,
      phone_number             as PhoneNumber,
      web_address              as WebAddress,
      bp_id                    as BpId,
      company_name             as CompanyName,
      legal_form               as LegalForm,
      currency_code            as CurrencyCode,
      address_guid             as AdressGuid,
      _Address
}
