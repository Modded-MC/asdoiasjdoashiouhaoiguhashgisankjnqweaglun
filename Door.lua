local function getKeyInput()
    term.clear();
    term.setCursorPos(0,0);
    term.write("Key > ");
    local input = read("*");
    if input == "SpaceDoor..Open*!£" then
        redstone.setOutput("left", true);
        sleep(2)
        redstone.setOutput("left", false);
    else
        print("Incorrect key, try again.");
    end;
end;

getKeyInput();
