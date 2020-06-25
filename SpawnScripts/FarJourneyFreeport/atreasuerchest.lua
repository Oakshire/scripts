--[[
    Script Name    : SpawnScripts/FarJourneyFreeport/atreasuerchest.lua
    Script Author  : Cynnar
    Script Date    : 2020.05.16 07:05:28
    Script Purpose : 
                   : 
--]]

local TasksaboardtheFarJourney = 524

local SmallBag = 20902
local WaulonsHat = 15354
local ThreadbareTunic = 185427

function spawn(NPC)

end

function casted_on(NPC, Spawn, SpellName)
		if HasQuest(Spawn, TasksaboardtheFarJourney) then
			if GetQuestStep(Spawn, TasksaboardtheFarJourney) == 2 then
				SpawnSet(NPC, "visual_state", 11903)
				GiveLoot(NPC, Spawn, 0, 20902, 15354, 185427)
			else
				SpawnSet(NPC, "visual_state", 11903)
				SendMessage(Spawn, "This box is empty", "white")
			end
		end
end

function passoutloot(NPC, Spawn)
	GiveLoot(NPC, Spawn, 0, SmallBag, WaulonsHat, ThreadbareTunic)
	Say(NPC, "Past give loot")
end


function respawn(NPC)

end