--[[
	Script Name	: SpawnScripts/Ruins/aprisonerguard.lua
	Script Purpose	: a prisoner guard
	Script Author	: Scatman
	Script Date	: 2009.08.29
	Script Notes	: 
--]]

dofile("SpawnScripts/Generic/RuinsDefendersVoiceOvers.lua")

function spawn(NPC)
	AddVisualStateLoop(NPC, 1000, math.random(500, 2000), 1026, 33794) -- 1h sword attack
	AddVisualStateLoop(NPC, 1000, math.random(500, 2000), 13058, 45826) -- taunt combat art
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
	generic_hail(NPC, Spawn)
end