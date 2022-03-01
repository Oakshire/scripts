--[[
	Script Name	: SpawnScripts/Graveyard/GravestoneofSirAckmin.lua
	Script Purpose	: Gravestone of Sir Ackmin
	Script Author	: Scatman
	Script Date	: 2009.07.25
	Script Notes	: 
--]]

local QUEST_FROM_GUARD = 252

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_FROM_GUARD, 2)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, QUEST_FROM_GUARD) and GetQuestStep(Caster, QUEST_FROM_GUARD) == 2 then
		-- TODO: Display visual effect over tomb and show popup
		SetStepComplete(Caster, QUEST_FROM_GUARD, 2)
	end
end