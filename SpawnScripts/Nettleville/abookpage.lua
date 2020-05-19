--[[
	Script Name	: SpawnScripts/Nettleville/abookpage.lua
	Script Purpose	: a book page
	Script Author	: Scatman
	Script Date	: 2009.08.10
	Script Notes	: 
--]]

local QUEST_2_FROM_HELAIN = 296

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_2_FROM_HELAIN, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end