@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GSTR2 - All UGST amounts'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZFI_GSTR1_UGST_AMT
  as select from I_OperationalAcctgDocItem
{

  key CompanyCode,
  key AccountingDocument,
  key FiscalYear,
      CompanyCodeCurrency,
      TaxCode,
      @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
      AmountInTransactionCurrency as UGSTAmt
}
where
  TransactionTypeDetermination = 'JOU'
group by
  CompanyCode,
  AccountingDocument,
  FiscalYear,
  CompanyCodeCurrency,
  TaxCode,
  AmountInTransactionCurrency,
  TransactionTypeDetermination
