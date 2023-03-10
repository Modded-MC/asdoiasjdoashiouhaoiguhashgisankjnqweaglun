oldOsPullEvent = os.pullEvent
os.pullEvent = os.pullEventRaw
local function getBioS()
    shell.run("monitor top clear");
    term.clear();
    term.setCursorPos(1,1);
    term.write("BioS > ");
    local input = read("*");
    if input == "password" then
        term.write("Powering device on...")
        shell.run("monitor top clear");
        sleep(2)
        term.setCursorPos(1,1);
        term.clear();
        shell.run("monitor top levelos")
    else
        if input ~= "password.dev" then
            term.write("Device powering off...");
            shell.run("monitor top clear");
            sleep(2);
            term.clear();
            os.shutdown();
        else
            term.write("Enabled developer mode.. Exiting to system");
            shell.run("monitor top clear");
            sleep(2);
            term.clear();
            term.setCursorPos(1,1);
        end;
    end;
end;

getBioS();
