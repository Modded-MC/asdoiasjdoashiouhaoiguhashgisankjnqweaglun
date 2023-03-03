local function getKeyInput()
    term.clear();
    term.setCursorPos(1,1);
    term.write("Key > ");
    local input = read("*");
    if input == "MySuperCoolPassword123" then
        getKeyInput();
        redstone.setOutput("left", true);
        sleep(2)
        redstone.setOutput("left", false);
    else
        term.write("Incorrect key, try again.");
        getKeyInput();
    end;
end;

getKeyInput();
