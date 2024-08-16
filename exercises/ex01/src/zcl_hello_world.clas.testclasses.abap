CLASS ltcl_hello_world DEFINITION FINAL FOR TESTING DURATION SHORT RISK LEVEL HARMLESS.

  PUBLIC SECTION.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA test_instance TYPE REF TO zcl_hello_world.

    "! <p class="shorttext synchronized">Setup</p>
    METHODS setup.
    "! <p class="shorttext synchronized">Teardown</p>
    METHODS teardown.
    
    "! <p class="shorttext synchronized">Test if hello world is returned</p>
    METHODS test_hello_world FOR TESTING.
ENDCLASS.

CLASS ltcl_hello_world IMPLEMENTATION.
  METHOD test_hello_world.
    data expected type string value 'Hello World'.	
    data hello_world type string.

    hello_world = test_instance->hello_world( ).

    cl_abap_unit_assert=>assert_equals(
      act = hello_world
      exp = expected
      msg = 'Hello World should be returned'
    ).
  ENDMETHOD.

  METHOD setup.
    CREATE OBJECT test_instance.
  ENDMETHOD.

  METHOD teardown.
    clear test_instance.
  ENDMETHOD.
ENDCLASS.