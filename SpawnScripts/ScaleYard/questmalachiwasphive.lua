--[[
	Script Name		:	SpawnScripts/ScaleYard/questmalachiwasphive.lua
	Script Purpose	:	<purpose>
	Script Author	:	Jabantiz
	Script Date		:	6/18/2018
	Script Notes	:	<special-instructions>
--]]

-- Quest ID's
QUEST_1 = 346 -- 175 --Wasp What I Can Do

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_1, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(NPC, Spawn, Message)
	if Message == "smash the hive" then
		SetStepComplete(Spawn, QUEST_1, 2)
		Despawn(NPC)
	end
end