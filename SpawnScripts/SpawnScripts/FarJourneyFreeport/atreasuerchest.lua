--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/atreasuerchest.lua
    Script Author  : Cynnar
    Script Date    : 2020.05.16 07:05:28
    Script Purpose : 
                   : 
--]]

local TasksaboardtheFarJourney = 524

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == "Open" then
		if not QuestStepIsComplete(Spawn, TasksaboardtheFarJourney, 2) then
			GiveLoot(NPC, Spawn, 0, 20902, 15354, 185427)
		else
			SendMessage(Spawn, "This box is empty", "white")
		end
	end
end


function respawn(NPC)

end