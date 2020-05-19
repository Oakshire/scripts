--[[
	Script Name	: <script-name>
	Script Purpose	: <purpose>
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	: <special-instructions>
--]]

local QUEST_FROM_GERMAIN = 202

function spawn(NPC)
	--SetRequiredQuest(NPC, QUEST_FROM_GERMAIN, 3)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, QUEST_FROM_GERMAIN) and GetQuestStep(Caster, QUEST_FROM_GERMAIN) == 3 then
		SetStepComplete(Caster, QUEST_FROM_GERMAIN, 3)
	end
end