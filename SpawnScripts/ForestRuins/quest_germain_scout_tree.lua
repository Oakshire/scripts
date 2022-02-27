--[[
	Script Name	: SpawnScripts/ForestRuins/quest_germain_scout_tree.lua
	Script Purpose	: quest_tree_Gather_Leaf
	Script Author	: <author-name>
	Script Date	: <date>
	Script Notes	:  News for Germain tree
--]]

local QUEST_FROM_GERMAIN = 520

function spawn(NPC)
--	SetRequiredQuest(NPC, QUEST_FROM_GERMAIN, 3)
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