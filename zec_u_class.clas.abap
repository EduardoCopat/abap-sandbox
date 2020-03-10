CLASS zec_u_class DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA a_bb TYPE string .
    DATA b_bb TYPE string .

    METHODS a_first_method.
    METHODS a_method .
  PROTECTED SECTION.
  PRIVATE SECTION.

    CLASS-METHODS b_method .
    METHODS c_method .
ENDCLASS.



CLASS ZEC_U_CLASS IMPLEMENTATION.


  METHOD a_first_method.
    WRITE 'Theo second pull'.
    WRITE 'changes'.
  ENDMETHOD.


  METHOD a_method.
    b_method( ).
    DATA(foo) = sy-subrc.
    foo = sy-uname.
    "more changes
  ENDMETHOD.


  METHOD b_method.
    "blablalb
    SELECT * FROM tadir INTO TABLE @DATA(tests) WHERE pgmid = 'cpt'.
  ENDMETHOD.


  METHOD c_method.
  ENDMETHOD.
ENDCLASS.