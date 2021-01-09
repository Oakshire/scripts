--[[
    Script Name    : SpawnScripts/QueensColony/aSapswillvillager133771752.lua
	Script Purpose	: Spawn script for a drunk Sapswill villager.
	Script Author	: Scatman
	Script Date	: 2009.01.11
	Script Notes	: 
--]]

local ADiplomaticMission = 166

function spawn(NPC)
        SpawnSet(NPC, "visual_state", 11769)
--	SpawnSet(NPC, "visual_state", 228)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	if HasQuest(Spawn, ADiplomaticMission) and not QuestStepIsComplete(Spawn, ADiplomaticMission, 2) then
		SetStepComplete(Spawn, ADiplomaticMission, 2)
	end
	
--	FaceTarget(NPC, Spawn)
	Say(NPC, "...")
end