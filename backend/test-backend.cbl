identification division.
program-id. DENCTestBackend.

data division.
    working-storage section.
        01 command pic x(4) value spaces.
        01 name pic x(100) value spaces.
        01 email pic x(100) value spaces.

        copy HTTPRequestMethods.

procedure division.
    accept command from argument-value
    accept name from argument-value
    accept email from argument-value
    evaluate command
        when HTTP-METHOD-POST
            display "I would add a name of " name " and email of " email
        when HTTP-METHOD-GET
            display "Hello " function trim(name)
    end-evaluate
.

end program DENCTestBackend.
