CLASS zcl_hello_world DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    "! <p class="shorttext synchronized">Hello World</p>
    "!
    "! | <p class="shorttext synchronized">Result</p>
    METHODS hello_world
      RETURNING VALUE(result) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_hello_world IMPLEMENTATION.
  METHOD hello_world.
    " todo, implement the hello world logic
    result = ''.
  ENDMETHOD.
ENDCLASS.