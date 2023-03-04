oldOsPullEvent = os.pullEvent
os.pullEvent = os.pullEventRaw
local function getBioS()
    term.clear();
    term.setCursorPos(1,1);
    term.write("BioS > ");
    local input = read("*");
    if input:lower == "device.poweron!" then
        term.write("Powering device on...")
        sleep(2)
        term.setCursorPos(1,1);
        term.clear();
        term.read("-")
    else
        if input.:lower ~= "devlopermode.enable!" then
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
