local function getPasswordInput()
    term.clear()
    term.setCursorPos(1,1)
    print("ᴘᴀssᴡᴏʀᴅ > ")
    local input = read("*")
    if input == "fortnitebattlepass" then
        print("hooray, u got")
    end
end

getPasswordInput()
