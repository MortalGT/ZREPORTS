@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GSTR2 - Company Gstin'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZFI_GSTR2_COMP_GSTIN
  as select from I_OperationalAcctgDocItem as a
{

  key CompanyCode,
  key AccountingDocument,
  key FiscalYear,
      BusinessPlace,
      case CompanyCode
      when '1000' then '27AAACI1091A2Z4'
      when '2000' then '24AACCI0787M1ZB'
      when '4000' then '27AAGCI9693C1Z7'
           end as CompGSTIN

}
group by
  CompanyCode,
  AccountingDocument,
  FiscalYear,
  BusinessPlace
