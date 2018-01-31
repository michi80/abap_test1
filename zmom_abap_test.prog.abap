*&---------------------------------------------------------------------*
*& Report ZMOM_ABAP_TEST
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
report zmom_abap_test.


data: lt_cust type table of zmom_customer.

field-symbols: <ls_cust> type zmom_customer.


select * from zmom_customer into corresponding fields of table lt_cust.


loop at   lt_cust assigning <ls_cust>.
  write: / <ls_cust>-cust_name.
endloop.


write: / 'End'.
