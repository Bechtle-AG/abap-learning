*&---------------------------------------------------------------------*
*& Report z_xx_calculator
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z_xx_calculator.

PARAMETERS p_num1 TYPE i.
PARAMETERS p_num2 TYPE i.
PARAMETERS p_add RADIOBUTTON GROUP g1.
PARAMETERS p_sub RADIOBUTTON GROUP g1.
PARAMETERS p_mul RADIOBUTTON GROUP g1.
PARAMETERS p_div RADIOBUTTON GROUP g1.
DATA lv_result TYPE i.


START-OF-SELECTION.
  IF p_add = abap_true.
    lv_result = p_num1 + p_num2.
  ELSEIF p_sub = abap_true.
    lv_result = p_num1 - p_num2.
  ELSEIF p_mul = abap_true.
    lv_result = p_num1 * p_num2.
  ELSEIF p_div = abap_true.
    lv_result = p_num1 / p_num2.
  ENDIF.

  WRITE: / 'Result:', lv_result.