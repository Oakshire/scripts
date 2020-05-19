--[[
	Script Name	: SpawnScripts/Ruins/orc_cask.lua
	Script Purpose	: orc_cask
	Script Author	: Scatman
	Script Date	: 2009.08.16
	Script Notes	: 
--]]

local QUEST_FROM_IMPERIDUS = 286

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_FROM_IMPERIDUS, 4)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end