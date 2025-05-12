CLASS zcl_updategstrate DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    METHODS : load_employee_records RETURNING VALUE(rv_run_status) TYPE char1.
ENDCLASS.



CLASS ZCL_UPDATEGSTRATE IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main .
    DATA(lv_run_status) = load_employee_records(  ).
    IF lv_run_status = 'X'.
      out->write( |Records updated successfully| ).

    ENDIF.
  ENDMETHOD .


  METHOD load_employee_records.
    TYPES: tt_zfit_tax_perc TYPE STANDARD TABLE OF zfit_tax_perc WITH EMPTY KEY.
    DATA(it_tax) = VALUE tt_zfit_tax_perc(
    (


taxcode = 'G0'
        igst_rate = '0'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'G1'
        igst_rate = ''
        cgst_rate = '0'
        sgst_rate = '0'
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'G3'
        igst_rate = '18'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'G4'
        igst_rate = ''
        cgst_rate = '9'
        sgst_rate = '9'
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'Y1'
        igst_rate = ''
        cgst_rate = '1.5'
        sgst_rate = '1.5'
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'Y0'
        igst_rate = ''
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

       (
        taxcode = 'Y2'
        igst_rate = ''
        cgst_rate = '2.5'
        sgst_rate = '2.5'
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )


        (
        taxcode = 'Y3'
        igst_rate = ''
        cgst_rate = '6'
        sgst_rate = '6'
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

       (
        taxcode = 'Y4'
        igst_rate = ''
        cgst_rate = '14'
        sgst_rate = '14'
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )


       (
        taxcode = 'Y6'
        igst_rate = '3'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'Y7'
        igst_rate = '5'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'Y8'
        igst_rate = '12'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

            (
        taxcode = 'Y9'
        igst_rate = '28'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'F0'
        igst_rate = '0'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'F1'
        igst_rate = ''
        cgst_rate = '0'
        sgst_rate = '0'
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'F3'
        igst_rate = '18'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'F4'
        igst_rate = ''
        cgst_rate = '9'
        sgst_rate = '9'
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'Z0'
        igst_rate = ''
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'Z1'
        igst_rate = ''
        cgst_rate = '2.5'
        sgst_rate = '2.5'
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'Z2'
        igst_rate = ''
        cgst_rate = '6'
        sgst_rate = '6'
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'Z3'
        igst_rate = ''
        cgst_rate = '14'
        sgst_rate = '14'
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'Z6'
        igst_rate = '5'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'Z7'
        igst_rate = '12'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'Z8'
        igst_rate = '18'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'J1'
        igst_rate = '18'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = '-18'
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

  (
        taxcode = 'J2'
        igst_rate = '0'
        cgst_rate = '9'
        sgst_rate = '9'
        rcm_igst_rate = ''
        rcm_cgst_rate = '-9'
        rcm_sgst_rate = '-9'
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'R1'
        igst_rate = ''
        cgst_rate = '2.5'
        sgst_rate = '2.5'
        rcm_igst_rate = ''
        rcm_cgst_rate = '-2.5'
        rcm_sgst_rate = '-2.5'
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'R2'
        igst_rate = ''
        cgst_rate = '6'
        sgst_rate = '6'
        rcm_igst_rate = ''
        rcm_cgst_rate = '-6'
        rcm_sgst_rate = '-6'
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'R3'
        igst_rate = ''
        cgst_rate = '14'
        sgst_rate = '14'
        rcm_igst_rate = ''
        rcm_cgst_rate = '-14'
        rcm_sgst_rate = '-14'
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'R5'
        igst_rate = '5'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = '-5'
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'R6'
        igst_rate = '12'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = '-12'
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

       (
        taxcode = 'R7'
        igst_rate = '28'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = '-28'
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )


        (
        taxcode = 'RS'
        igst_rate = '18'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = '18'
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

       (
        taxcode = 'K1'
        igst_rate = '18'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )


       (
        taxcode = 'K5'
        igst_rate = '5'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'K6'
        igst_rate = '12'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

        (
        taxcode = 'K7'
        igst_rate = '28'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
        )

            (
        taxcode = 'E1'
        igst_rate = '18'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'E2'
        igst_rate = '18'
        cgst_rate = '0'
        sgst_rate = '0'
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )

    (
        taxcode = 'E3'
        igst_rate = '18'
        cgst_rate = ''
        sgst_rate = ''
        rcm_igst_rate = ''
        rcm_cgst_rate = ''
        rcm_sgst_rate = ''
        localcreatedby = ''
        localcreatedat = ''
        locallastchangedby = ''
        locallastchangedat = ''
        lastchangedat = ''
    )



 ) .


    DELETE FROM zfit_tax_perc .
    INSERT zfit_tax_perc FROM TABLE @it_tax.
    rv_run_status  = COND #( WHEN sy-subrc EQ 0 THEN 'X' ELSE ''  ).

  ENDMETHOD.
ENDCLASS.
