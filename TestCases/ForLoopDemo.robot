
*** Test Cases ***
#Forloop1
#    : FOR   ${i}    IN RANGE    1   10
#    \   LOG TO CONSOLE  ${i}

#Forloop2
#    :FOR    ${i}    IN  1  2  3  4  5  6  7  8  # single space will print the values in the same line
#                                                # double space will print the values in the different lines
#    \   LOG TO CONSOLE  ${i}


#Forlopp3withList
#    @{items}    create list     1   2   3   4   5   #@{items} is the list variable
#    : FOR   ${i}    IN  @{items}
#    \   Log to console  ${i}                # ${i} is the index value

#Forloop4
#    : FOR   ${i}  IN    john    david   smith   scott
#    \   Log to console  ${i}

Forloop5
    @{nameslist}    create list     john    david   smith   scott
    : FOR   ${i}  IN    john    david   smith   scott
    \   Log to console  ${i}
