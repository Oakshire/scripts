--[[
	Script Name	: SpawnScripts/Caves/qey_blacksmith_oven001.lua
	Script Purpose	: digging_machine
	Script Author	: Scatman
	Script Date	: 2009.10.08
	Script Notes	:
--]]

local QUEST2_FROM_CONSULBREE = 224

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST2_FROM_CONSULBREE, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, QUEST2_FROM_CONSULBREE) and not QuestStepIsComplete(Caster, QUEST2_FROM_CONSULBREE, 1) and SpellName == "Place Explosives" then
		-- explosives
		if HasItem(Caster, 6052) then
			RemoveItem(Caster, 6052)
		end
		SendMessage(Caster, "Charges set for 3 seconds.")
		SetStepComplete(Caster, QUEST2_FROM_CONSULBREE, 1)
		AddTimer(Target, 3000, "BlowUpMachine")
	end
end

function BlowUpMachine(NPC)
	Despawn(NPC)
end