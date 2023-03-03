local key = null;

if key == null then
    term.write("No key set, set it? y/n")
    local answer = read()
    if answer == "y" then
        term.write("The process will begin shortly")
    else
        term.write("The process will be terminated, thanks for using DL1")
    end
end
