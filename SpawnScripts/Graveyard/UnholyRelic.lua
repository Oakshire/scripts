--[[
	Script Name	: SpawnScripts/Graveyard/UnholyRelic.lua
	Script Purpose	: Unholy Relic
	Script Author	: Scatman
	Script Date	: 2009.07.12
	Script Notes	: 
--]]

local ZADDAR_QUEST_4 = 234

function spawn(NPC)
	SetRequiredQuest(NPC, ZADDAR_QUEST_4, 3)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Spawn, ZADDAR_QUEST_4) and GetQuestStep(Spawn, ZADDAR_QUEST_4) == 3 then
		SetStepComplete(Spawn, ZADDAR_QUEST_4, 3)
		SendMessage(Caster, "You retrieve the unholy relic.")
		Despawn(Target)
	end
end