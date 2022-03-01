--[[
	Script Name	: SpawnScripts/Nettleville/awaterloggedcrate.lua 
	Script Purpose	: a waterlogged crate
	Script Author	: Scatman
	Script Date	: 2009.08.10
	Script Notes	: 
--]]

local QUEST_4_FROM_JOHFRIT = 298

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_4_FROM_JOHFRIT, 1)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end