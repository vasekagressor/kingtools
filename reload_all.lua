script_properties('work-in-pause')


--- Main
function main()
	repeat wait(100) until isSampAvailable()
	sampRegisterChatCommand('rl', cmd_lr) -- In chat /rl for reload libs of moonloader
  while true do
    wait(0)
    if isKeyDown(17) and isKeyJustPressed(82)  then -- CTRL+R
		cmd_lr()
    end
  end
end

function cmd_lr()
printString("~b~Reloading Lua libs...", 1500)
addOneOffSound(0, 0, 0, 1058)
reloadScripts()
end