--[[
	Script Name	: SpawnScripts/Nettleville/awaterproofbarrel.lua 
	Script Purpose	: a waterproof barrel
	Script Author	: Scatman
	Script Date	: 2009.08.10
	Script Notes	: 
--]]

local QUEST_4_FROM_JOHFRIT = 298

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_4_FROM_JOHFRIT, 2)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end