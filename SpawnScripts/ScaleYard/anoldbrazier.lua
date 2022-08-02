--[[
    Script Name    : SpawnScripts/ScaleYard/anoldbrazier.lua
    Script Author  : torsten
    Script Date    : 2022.08.01 01:08:45
    Script Purpose : 
                   : 
--]]

local PayingHomagetothePast = 342

function casted_on(NPC, Spawn, Message)
	if GetQuestStep(Spawn, PayingHomagetothePast) == 3 and Message == "place skulls" then
		--492 for fire
		SpawnSet(NPC, "visual_state", "492")
		AddTimer(NPC, 5000, "EndFire")
		
		SetStepComplete(Spawn, QUEST_3, 3)
	end
end

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end