local function getKeyInput()
    term.clear();
    term.setCursorPos(1,1);
    term.write("Key > ");
    local input = read("*");
    if input == "MySuperCoolPassword123" then
        term.write("Correct key entered, opening door.")
        redstone.setOutput("left", true);
        sleep(2)
        redstone.setOutput("left", false);
        getKeyInput();
    else
        term.write("Incorrect key, try again.");
        sleep(2);
        getKeyInput();
    end;
end;

getKeyInput();
