local function inputEnable(reason, temp)
    if temp == true then
        print(reason.." ["..temp.."]".." >")
    else
        print(reason.." > ")
    end
end

inputEnable("Username", true)
inputEnable("Password", false)
