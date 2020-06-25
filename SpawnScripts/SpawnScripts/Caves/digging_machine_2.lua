--[[
	Script Name	: SpawnScripts/Caves/digging_machine_2.lua
	Script Purpose	: digging_machine_2
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	: 
--]]

local QUEST2_FROM_EMMA = 227

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST2_FROM_EMMA, 2)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, QUEST2_FROM_EMMA) and not QuestStepIsComplete(Caster, QUEST2_FROM_EMMA, 2) and SpellName == "Place Explosives" then
		SetStepComplete(Caster, QUEST2_FROM_EMMA, 2)
		AddTimer(Target, 1000, "DespawnMachine")
	end
end

function DespawnMachine(NPC)
	local digging_machine2 = GetSpawn(NPC, 1970122)
	Despawn(digging_machine2)
	
	local control_device2 = GetSpawn(NPC, 1970128)
	Despawn(control_device2)
	
	local crate2 = GetSpawn(NPC, 1970130)
	Despawn(crate2)
	
	local instructions2 = GetSpawn(NPC, 1970127)
	Despawn(instructions2)
	
	local shovel2 = GetSpawn(NPC, 1970129)
	while shovel2 ~= nil do
		Despawn(shovel2)
		shovel2 = GetSpawn(NPC, 1970129)
	end
	
	-- spawn smashed machine
	
	Despawn(NPC)
end