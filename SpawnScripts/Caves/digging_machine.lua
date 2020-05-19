--[[
	Script Name	: SpawnScripts/Caves/digging_machine.lua
	Script Purpose	: digging_machine
	Script Author	: Scatman
	Script Date	: 2009.05.16
	Script Notes	:
--]]

local QUEST2_FROM_CONSULBREE = 222

function spawn(NPC)
	--SetRequiredQuest(NPC, QUEST2_FROM_CONSULBREE, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(Caster, Target)
	if HasQuest(Caster, QUEST2_FROM_CONSULBREE) and not QuestStepIsComplete(Caster, QUEST2_FROM_CONSULBREE, 2) then
		AddStepProgress(Caster, QUEST2_FROM_CONSULBREE, 2, 1)
		SendMessage(Caster, "Charges set for 3 seconds.")
		AddTimer(Target, 3000, "BlowUpMachine", 1, Caster)
	end
end

function BlowUpMachine(NPC, Spawn)
	Despawn(NPC)
	-- explosives
	RemoveItem(Spawn, 4873)
end