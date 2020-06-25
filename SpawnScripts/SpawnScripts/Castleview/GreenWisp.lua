--[[
	Script Name	: SpawnScripts/Castleview/GreenWisp.lua
	Script Purpose	: Green Wisp
	Script Author	: Scatman
	Script Date	: 2009.10.02
	Script Notes	: 
--]]

local HIGH_ELF_MENTOR_QUEST_1 = 223

function spawn(NPC)
	SetRequiredQuest(NPC, HIGH_ELF_MENTOR_QUEST_1, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end