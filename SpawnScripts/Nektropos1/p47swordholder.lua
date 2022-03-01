--[[
    Script Name    : SpawnScripts/Nektropos1/p47swordholder.lua
    Script Author  : smash
    Script Date    : 2016.09.11 01:09:03
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
	SetRequiredQuest(NPC, 177, 9, 0, 1)
end

function casted_on(NPC, Spawn, Message)
	if Message == "inspect" then
		SendMessage(Spawn, "There appears to be a shaft running down the middle of the stand, about the width of a thin blade.")
	else
		local zone = GetZone(NPC)
		
		--First unlock and open the 2 secret basement doors
		local door = GetSpawnByLocationID(zone, 619859)
		UseWidget(door)
		
		if GetTempVariable(NPC, "SwordSpawned") ~= "true" then
			local door2 = GetSpawnByLocationID(zone, 619860)
			SpawnSet(door, "show_command_icon", "1")
			SpawnSet(door2, "show_command_icon", "1")
			SpawnSet(door, "display_hand_icon", "1")
			SpawnSet(door2, "display_hand_icon", "1")
		
			--Now spawn the sword in this sword holder
			SpawnByLocationID(zone, 623147)
			SetTempVariable(NPC, "SwordSpawned", "true")
		end
	end
end