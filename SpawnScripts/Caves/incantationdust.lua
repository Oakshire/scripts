--[[
	Script Name	: SpawnScripts/Caves/incantationdust.lua
	Script Purpose	: incantation dust
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	: 
--]]

local CAVES_CONSUL_BREE_QUEST_3 = 494

function spawn(NPC)
	SetRequiredQuest(NPC, CAVES_CONSUL_BREE_QUEST_3, 3) 
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end