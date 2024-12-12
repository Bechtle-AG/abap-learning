# Exercise 2: Selection Screen - Calculator

> In this excerise, you will create a selection screen with two input fields and radio buttons to select an operation. When the report is executed, the result of the operation will be displayed.

> [!NOTE]
> The `XX` in the object names should be replaced with your identifier. E.g. your name or initials.

## Unit 1 - Create Report

### Create a new report program called `Z_XX_CALCULATOR`.

You can create the report in eclipse by right-clicking your desired package and selecting `New` -> `Other ABAP Repository Object` -> `ABAP Program`.

## Unit 2 - Build Selection Screen 

### Add input field to selection screen

Add the following code to the top of the report. Under the `REPORT` statement.

```abap
    PARAMETERS p_num1 TYPE i.
    PARAMETERS p_num2 TYPE i.
```

### Add radio buttons to selection screen

Add the following code to the top of the report. Under the `PARAMETERS` statement.

```abap
    PARAMETERS p_add RADIOBUTTON GROUP g1.
    PARAMETERS p_sub RADIOBUTTON GROUP g1.
    PARAMETERS p_mul RADIOBUTTON GROUP g1.
    PARAMETERS p_div RADIOBUTTON GROUP g1.
```

## Unit 3 - Build Calculation Logic

### Add the calculation logic

Add the following code to the report after the `START-OF-SELECTION` statement.

```abap
    DATA: lv_result TYPE i.
    
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
```