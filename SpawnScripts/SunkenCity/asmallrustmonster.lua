--[[
	Script Name	: SpawnScripts/SunkenCity/asmallrustmonster.lua
	Script Purpose	: a small rust monster
	Script Author	: Scatman
	Script Date	: 2009.07.28
	Script Notes	: 
--]]

local QUEST_3_FROM_THORSON = 268

function spawn(NPC)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function casted_on(Target, Caster)
	-- TODO: Verify 'Catalog Creature' was casted.
	if HasQuest(Caster, QUEST_3_FROM_THORSON) and not QuestStepIsComplete(Caster, QUEST_3_FROM_THORSON, 2) then
		SetStepComplete(Caster, QUEST_3_FROM_THORSON, 2)
	end
end