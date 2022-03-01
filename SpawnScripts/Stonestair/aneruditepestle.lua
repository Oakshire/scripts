--[[
	Script Name		:	SpawnScripts/Stonestair/aneruditepestle.lua
	Script Purpose	:	
	Script Author	:	Jabantiz
	Script Date		:	6/22/2018
	Script Notes	:	
--]]

-- Quest ID's
local ERUDITE_ALCHEMY = 355

function spawn(NPC)
	SetRequiredQuest(NPC, ERUDITE_ALCHEMY, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, Message)
	if HasQuest(Spawn, ERUDITE_ALCHEMY) and GetQuestStep(Spawn, ERUDITE_ALCHEMY) == 2 and Message == "grind herbs" then
		SetStepComplete(Spawn, ERUDITE_ALCHEMY, 2)
	end
end