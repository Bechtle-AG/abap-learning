# Exercise 3: Dynpro - Calculator

> In this exercise, you will create a calculator using a classic ABAP Dynpro (Screen) instead of a selection screen. You will learn how to design a screen with input/output fields, pushbuttons, and how to handle user interactions using PAI (Process After Input).

> [!NOTE]
> The `XX` in the object names should be replaced with your identifier. E.g. your name or initials.

## Unit 1 - Create Report

### Create a new report program called `Z_XX_DYNPRO_CALC`.

Create the report in Eclipse by right-clicking your package and selecting `New` -> `Other ABAP Repository Object` -> `ABAP Program`.

Add the following data declarations to your report:

```abap
DATA: gv_num1   TYPE i,
      gv_num2   TYPE i,
      gv_result TYPE i,
      ok_code   TYPE sy-ucomm.
```

## Unit 2 - Create the Screen (Dynpro)

### Create Screen 0100
1. Right-click your program Z_XX_DYNPRO_CALC and select New -> Other ABAP Repository Object -> Screen.
1. Enter 0100 as the Screen Number and provide a short description (e.g., "Calculator Screen").
1. Open the Screen Painter (Layout tab in Eclipse or via SAP GUI).

### Add Elements to the Screen
Add the following elements to your screen layout:

- Two Input Fields: Name them exactly GV_NUM1 and GV_NUM2.
- One Output Field: Name it exactly GV_RESULT (Make sure to set it to 'Output Only' in the attributes).
- Four Pushbuttons:
    - Text: `+`, FctCode (Function Code): `ADD`

    - Text: `-`, FctCode: `SUB`

    - Text: `*`, FctCode: `MUL`

    - Text: `/`, FctCode: `DIV`

### Activate the Screen flow logic
In the Flow Logic of screen 0100, uncomment the modules for PBO (Process Before Output) and PAI (Process After Input):

```abap
PROCESS BEFORE OUTPUT.
  MODULE status_0100.

PROCESS AFTER INPUT.
  MODULE user_command_0100.
```

## Unit 3 - Build the Logic
Double-click on the module names `status_0100` and `user_command_0100` in the flow logic to create them in your main program.

Add the calculation logic inside the `user_command_0100` module using a `CASE` statement based on the `ok_code`.

To start the screen when executing the report, add this to your main program:

```abap
START-OF-SELECTION.
  CALL SCREEN 0100.
```

## Unit 4 - Test the Calculator
Execute the report (`F8`). Your screen should appear. Enter two numbers, click one of the operator buttons, and the result should be calculated and displayed in the result field!