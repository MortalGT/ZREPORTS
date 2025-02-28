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
      when '1100' then '06ABNCS8610B1ZF'
      when '1200' then '27AAJCN7374A1ZD'
      when '1300' then '27ABNCS8537R1Z4'
      when '1000' then ( case BusinessPlace
                         when 'MH27' then '27AAICN6209K1Z5'
                         when 'HR06' then '06AAICN6209K1Z9'
                         end )
           end as CompGSTIN

}
group by
  CompanyCode,
  AccountingDocument,
  FiscalYear,
  BusinessPlace
