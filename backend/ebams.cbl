identification division.
program-id. eBAMS.

data division.
    working-storage section.
        01 command pic x(4) value spaces.
        01 name pic x(100) value spaces.
        01 email pic x(100) value spaces.

procedure division.
    accept command from argument-value
    accept name from argument-value
    accept email from argument-value
    evaluate command
        when "post"
            display "I would add a name of " name " and email of " email
        when "get"
            display "Hello " function trim(name)
    end-evaluate
.

end program eBAMS.
