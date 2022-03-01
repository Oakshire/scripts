--[[
	Script Name		:	SpawnScripts/Stonestair/FeleinHerbs.lua
	Script Purpose	:	
	Script Author	:	Jabantiz
	Script Date		:	6/22/2018
	Script Notes	:	<special-instructions>
--]]

-- Quest ID's
local ERUDITE_ALCHEMY = 355

function spawn(NPC)
	SetRequiredQuest(NPC, ERUDITE_ALCHEMY, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

