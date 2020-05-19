--[[
	Script Name	: Script: SpawnScripts/Graveyard/qst_haligan_tomb.lua
	Script Purpose	: qst_haligan_tomb
	Script Author	: Scatman
	Script Date	: 2009.07.22
	Script Notes	: 
--]]

local QUEST_7_FROM_CUSTODIAN = 238

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST_7_FROM_CUSTODIAN, 2)
end

function hailed(NPC, Spawn)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(Target, Caster)
	if HasQuest(Caster, QUEST_7_FROM_CUSTODIAN) and GetQuestStep(Caster, QUEST_7_FROM_CUSTODIAN) == 2 then
		-- TODO: Display popup
		SetStepComplete(Caster, QUEST_7_FROM_CUSTODIAN, 2)
	end
end