--[[
    Script Name    : SpawnScripts/Nektropos1/LibraryDoor.lua
    Script Author  : smash
    Script Date    : 2016.02.06 12:02:35
    Script Purpose : 
                   : 
--]]

require "SpawnScripts/Generic/PlayerHistory"

function spawn(NPC)

end

function can_use_command(NPC, Spawn, Message)
	if GetPlayerHistory(Spawn, HISTORY.NEK_CASTLE_LIBRARY_ACCESS) ~= 1 then
		SendMessage(Spawn, "This door seems magically barred", "yellow")
		return false
	end
	return true
end