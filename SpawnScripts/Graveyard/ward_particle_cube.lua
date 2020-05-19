--[[
	Script Name	: SpawnScripts/Graveyard/ward_particle_cube.lua
	Script Purpose	: ward_particle_cube
	Script Author	: Scatman
	Script Date	: 2009.07.12
	Script Notes	: 
--]]

local ZADDAR_QUEST_4 = 234

function spawn(NPC)
	SetRequiredQuest(NPC, ZADDAR_QUEST_4, 2)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Spawn, ZADDAR_QUEST_4) and GetQuestStep(Spawn, ZADDAR_QUEST_4) == 2 then
		SetStepComplete(Spawn, ZADDAR_QUEST_4, 2)
		SendMessage(Caster, "You place the relic within the sphere of influence.")
		Despawn(Target)
	end
end