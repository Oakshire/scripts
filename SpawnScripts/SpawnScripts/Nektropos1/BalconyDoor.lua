--[[
    Script Name    : SpawnScripts/Nektropos1/BalconyDoor.lua
    Script Author  : smash
    Script Date    : 2016.02.06 02:02:31
    Script Purpose : 
                   : 
--]]

function spawn(NPC)

end

function can_use_command(NPC, Spawn, Message)
	if not HasCompletedQuest(Spawn, 173) then
		SendMessage(Spawn, "This door seems magically barred", "yellow")
		return false
	end
	return true
end