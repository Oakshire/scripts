--[[
	Script Name		:	SpawnScripts/QueensColony/ebiksspringer.lua
	Script Purpose	:	<purpose>
	Script Author	:	Jabantiz
	Script Date		:	9/13/2016
	Script Notes	:	<special-instructions>
--]]

local EbiksMissingParts = 185

function spawn(NPC)
	SetRequiredQuest(NPC, EbiksMissingParts, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, Message)
	if Message == "search parts" then
		SetStepComplete(Spawn, EbiksMissingParts, 2)
	end
end