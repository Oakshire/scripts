--[[
	Script Name	: SpawnScripts/Caves/digging_machine_1.lua
	Script Purpose	: digging_machine_2
	Script Author	: Scatman
	Script Date	: 2009.10.18
	Script Notes	: 
--]]

local QUEST2_FROM_EMMA = 227

function spawn(NPC)
	SetRequiredQuest(NPC, QUEST2_FROM_EMMA, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function hailed(NPC, Spawn)
end

function casted_on(Target, Caster, SpellName)
	if HasQuest(Caster, QUEST2_FROM_EMMA) and not QuestStepIsComplete(Caster, QUEST2_FROM_EMMA, 1) and SpellName == "Place Explosives" then
		SetStepComplete(Caster, QUEST2_FROM_EMMA, 1)
		AddTimer(Target, 1000, "DespawnMachine")
	end
end

function DespawnMachine(NPC)
	local digging_machine1 = GetSpawn(NPC, 1970108)
	Despawn(digging_machine1)
	
	local control_device1 = GetSpawn(NPC, 1970114)
	Despawn(control_device1)
	
	local crate1 = GetSpawn(NPC, 1970116)
	Despawn(crate1)
	
	local instructions1 = GetSpawn(NPC, 1970113)
	Despawn(instructions1)
	
	local shovel1 = GetSpawn(NPC, 1970115)
	while shovel1 ~= nil do
		Despawn(shovel1)
		shovel1 = GetSpawn(NPC, 1970115)
	end
	
	-- spawn smashed machine
	
	Despawn(NPC)
end