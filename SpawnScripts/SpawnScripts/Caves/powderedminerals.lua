--[[
	Script Name	: SpawnScripts/Caves/powderedminerals.lua
	Script Purpose	: powdered minerals
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	: 
--]]

local QUEST_1_FROM_EMMA_TORQUE = 226

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_1_FROM_EMMA_TORQUE, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end