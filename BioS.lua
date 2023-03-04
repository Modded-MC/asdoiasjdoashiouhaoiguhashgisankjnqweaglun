local function getBioS()
    term.clear();
    term.setCursorPos(1,1);
    term.write("BioS > ");
    local input = read("*");
    if input == "Device.PowerOn!" then
        term.write("Powering device on...")
        sleep(2)
        term.clear();
    else
        if input ~= "DevloperMode.Enable!" then
            term.write("Device powering off...");
            sleep(2);
            term.clear();
            os.shutdown();
        else
            term.write("Entered source key, exiting program.");
            exit();
        end;
    end;
end;

getBioS();
