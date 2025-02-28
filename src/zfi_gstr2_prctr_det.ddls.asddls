@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GSTR2 - Profit Center details'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZFI_GSTR2_PRCTR_DET
  as select from    I_OperationalAcctgDocItem as a
    left outer join I_ProfitCenterText        as b on a.ProfitCenter = b.ProfitCenter

{

  key a.CompanyCode,
  key a.AccountingDocument,
  key a.FiscalYear,
      a.ProfitCenter,
      b.ProfitCenterName
}
where
  a.ProfitCenter is not initial
group by
  a.CompanyCode,
  a.AccountingDocument,
  a.FiscalYear,
  a.ProfitCenter,
  b.ProfitCenterName
