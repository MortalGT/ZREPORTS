@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'GSTR report 2'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZFI_GSTR2_REP1
  as select from    I_OperationalAcctgDocItem  as a
    left outer join I_Supplier                 as b on a.Supplier = b.Supplier
    left outer join I_BusPartAddrDepdntTaxNmbr as c on a.Supplier = c.BusinessPartner
    left outer join I_RegionText               as d on  b.Country = d.Country
                                                    and b.Region  = d.Region
    left outer join I_JournalEntry             as e on  a.AccountingDocument = e.AccountingDocument
                                                    and a.FiscalYear         = e.FiscalYear
                                                    and a.CompanyCode        = e.CompanyCode
    left outer join ZFI_GSTR2_PO_DETS          as f on  a.AccountingDocument = f.AccountingDocument
                                                    and a.FiscalYear         = f.FiscalYear
                                                    and a.CompanyCode        = f.CompanyCode
    left outer join ZFI_GSTR2_PRCTR_DET        as g on  a.AccountingDocument = g.AccountingDocument
                                                    and a.FiscalYear         = g.FiscalYear
                                                    and a.CompanyCode        = g.CompanyCode
  //    left outer join ZFI_GSTR2_EXP_GL           as h on  a.AccountingDocument = h.AccountingDocument
  //                                                    and a.FiscalYear         = h.FiscalYear
  //                                                    and a.CompanyCode        = h.CompanyCode
    left outer join ZFI_GSTR2_TAXAMT_F         as i on  a.AccountingDocument = i.AccountingDocument
                                                    and a.FiscalYear         = i.FiscalYear
                                                    and a.CompanyCode        = i.CompanyCode
    left outer join ZFI_GSTR2_COMP_GSTIN       as j on  a.AccountingDocument = j.AccountingDocument
                                                    and a.FiscalYear         = j.FiscalYear
                                                    and a.CompanyCode        = j.CompanyCode

    left outer join ZFI_GSTR2_MSME_VEND1       as l on  a.AccountingDocument = l.AccountingDocument
                                                    and a.FiscalYear         = l.FiscalYear
                                                    and a.CompanyCode        = l.CompanyCode
    left outer join ZFI_GSTR2_CLEARING_STATUS  as m on  a.AccountingDocument = m.AccountingDocument
                                                    and a.FiscalYear         = m.FiscalYear
                                                    and a.CompanyCode        = m.CompanyCode
  //    left outer join ZFI_GSTR2_HSN_SAC          as n on  a.AccountingDocument = n.AccountingDocument
  //                                                    and a.FiscalYear         = n.FiscalYear
  //                                                    and a.CompanyCode        = n.CompanyCode
    left outer join ZFI_GSTR2_IRN              as o on  a.AccountingDocument = o.AccountingDocument
                                                    and a.FiscalYear         = o.FiscalYear
                                                    and a.CompanyCode        = o.CompanyCode
    left outer join ZFI_GSTR2_WBS              as p on  a.AccountingDocument = p.AccountingDocument
                                                    and a.FiscalYear         = p.FiscalYear
                                                    and a.CompanyCode        = p.CompanyCode


{
  key a.CompanyCode,
  key a.FiscalYear,
  key a.AccountingDocument,
      //  key a.AccountingDocumentItem,
      j.CompGSTIN                  as CustGstin,
      //      h.CostElement                as ExpGLAcct,
      //      h.GLAccountName              as ExpGLDesp,
      a.AccountingDocumentType     as DocumentType,
      a.DocumentDate               as DocumentDate,
      a.PostingDate                as PostingDate,
      a.Supplier,
      ''                           as TaxCode,
      ''                           as TaxCodeDesp,
      a.CompanyCodeCurrency,
      b.SupplierFullName,
      b.CityName,
      b.Region,
      d.RegionName,
      d.RegionName                 as PlaceOfSupply,
      b.TaxNumber3                 as SupplierGSTIN,
      e.DocumentReferenceID        as InvoiceRefNum,
      f.PurchasingDocument         as PoDocument,
      @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
      i.TaxableAmt                 as ItemTaxAmt,
      ''                           as IgstRate,
      ''                           as CgstRate,
      ''                           as SgstRate,
      ''                           as RcmIgstRate,
      ''                           as RcmCgstRate,
      ''                           as RcmSgstRate,
      @Semantics.amount.currencyCode: 'CompanyCodeCurrency'
      a.CashDiscountBaseAmount     as InvoiceVal,
      //      n.IN_HSNOrSACCode            as HsnSacCode,
      g.ProfitCenter,
      g.ProfitCenterName           as ProfitCenterDesp,
      //      n.HSNNature                  as HsnNature,
      case
      when b.TaxNumber3 is not initial
      then 'Registered'
      else 'Non Registered'
      end                          as GstinStatus,
      //      f.BaseUnit                   as Uom,
      //      f.PurchasingDocumentPriceUnit,
      //      @Semantics.quantity.unitOfMeasure: 'PurchasingDocumentPriceUnit'
      //      f.PurchaseOrderQty           as Qty,
      e.ParkedByUser               as ParkBy,
      e.AccountingDocCreatedByUser as PostBy,
      b.BusinessPartnerPanNumber   as Pan,
      a.BusinessPlace,
      l.MsmeStatus,
      m.clearind,
      o.IN_InvoiceReferenceNumber  as InvRefNumber,
      p.WBSElementInternalID
}
where
       a.FinancialAccountType   = 'K'
  and(
       a.AccountingDocumentType = 'RE'
    or a.AccountingDocumentType = 'KR'
    or a.AccountingDocumentType = 'RK'
    or a.AccountingDocumentType = 'KG'
    or a.AccountingDocumentType = 'GK'
  )
