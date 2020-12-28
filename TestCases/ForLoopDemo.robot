
*** Test Cases ***
#Forloop1
#    : FOR   ${i}    IN RANGE    1   10
#    \   LOG TO CONSOLE  ${i}

Forloop2
    :FOR    ${i}    IN  1  2  3  4  5  6  7  8  # single space will print the values in the same line
                                                # double space will print the values in the different lines
    \   LOG TO CONSOLE  ${i}