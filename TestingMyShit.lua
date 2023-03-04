local function input(name, hash)
    local isenabled = true
    if hash == true then
        local input = read("*")
        while isenabled == true do
            term.clear()
            term.setCursorPos(1,1)
            term.write(name.." >")
        end
    else if hash == false then
        local input = read()
        while isenabled == true do
            term.clear()
            term.setCursorPos(1,1)
            term.write(name.." >")
        end
    end
end

input("Username", true)
