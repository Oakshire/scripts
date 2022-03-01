--[[
	Script Name	: SpawnScripts/PeatBog/qst_ambush_site_1.lua
	Script Purpose	: Handles quest updates for the first ambush site
	Script Author	: Scatman
	Script Date	: 2009.05.10
	Script Notes	: 
--]]

local QUEST_3 = 217

function spawn(NPC)
	--SetRequiredQuest(NPC, QUEST_3, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, QUEST_3) and not QuestStepIsComplete(Caster, QUEST_3, 1) then
		SetStepComplete(Caster, QUEST_3, 1)
		--popup dialog box after inspect
	end
end