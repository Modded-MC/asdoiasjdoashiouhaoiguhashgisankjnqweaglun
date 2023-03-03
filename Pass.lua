local function getKeyInput()
    term.clear();
    term.setCursorPos(1,1);
    term.write("Key > ");
    local input = read("*");
    if input == "Door-Open1!!mbnlkap-13145" then
        term.write("Correct key entered, opening door.")
        redstone.setOutput("left", true);
        sleep(2)
        redstone.setOutput("left", false);
        getKeyInput();
    else
        if input ~= "CoreEnterPswd14!FGb-L" then
            term.write("Incorrect key, try again.");
            sleep(2);
            getKeyInput();
        else
            term.write("Entered source key, exiting program.");
            exit();
        end;
    end;
end;

getKeyInput();
