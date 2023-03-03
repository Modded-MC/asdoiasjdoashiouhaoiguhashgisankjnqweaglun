local key = null;

function print(printtext)
    term.write(printtext)
end

if key == null then
    print("No key set, set it? y/n")
    local answer = read()
    if answer == "y" then
        print("The process will begin shortly")
    else
        print("The process will be terminated, thanks for using DL1")
    end
end
