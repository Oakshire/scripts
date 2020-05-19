--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/atreasuerchest.lua
    Script Author  : Cynnar
    Script Date    : 2020.05.16 07:05:28
    Script Purpose : 
                   : 
--]]

local chest_loot = 1

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "Open" then
		--SetTempVariable(NPC, "chest_loot", 1)
		if GetTempVariable(NPC, "chest_loot") == 3 then
		   SetTempVariable(NPC, "chest_loot", nil)
		   SpawnSet(NPC, "visual_state", 11903)
		   Say(NPC, "This chest has loot put it in")
		   Say(NPC, "Chest Variable is set to " .. GetTempVariable(NPC, "chest_loot") .. " now.")
		else
			if GetTempVariable(NPC, "chest_loot") <= 3 then
				if math.random() <= 0.4 then
					Say(NPC, "This Random chest has loot put it in")
					SetTempVariable(NPC, "chest_loot", nil)
					SpawnSet(NPC, "visual_state", 11903)
					Say(NPC, "Chest Variable is set to " .. GetTempVariable(NPC, "chest_loot") .. " now.")
				else
					Say(NPC, "This is chest is empty")
					SpawnSet(NPC, "visual_state", 11903)
					chestloot = chest_loot + 1
					SetTempVariable(NPC, "chest_loot", chestloot)
					Say(NPC, "Chest Variable is set to " .. GetTempVariable(NPC, "chest_loot") .. " now.")
				end
			end
		end
	end
end


function respawn(NPC)

end