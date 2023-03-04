oldOsPullEvent = os.pullEvent
os.pullEvent = os.pullEventRaw
local function getBioS()
    term.clear();
    term.setCursorPos(1,1);
    term.write("BioS > ");
    local input = read("*");
    if input == "password" then
        term.write("Powering device on...")
        sleep(2)
        term.setCursorPos(1,1);
        term.clear();
        term.read("-")
    else
        if input ~= "password.dev" then
            term.write("Device powering off...");
            sleep(2);
            term.clear();
            os.shutdown();
        else
            term.write("Enabled developer mode.. Exiting to system");
            sleep(2);
            term.clear();
            term.setCursorPos(1,1);
        end;
    end;
end;

getBioS();
