--[[
	Script Name	: SpawnScripts/Darklight/widgetriftpebble.lua
	Script Purpose	: Sealing the Rift 
	Script Author	: Cynnar
	Script Date	: 2015.07.01
	Script Notes	: Auto-Generated Conversation from PacketParser Data
--]]

local SealingTheRift = 122

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, SealingTheRift) then
		if SpellName == 'Kick Rubble' then
			SetStepComplete(Spawn, SealingTheRift, 1)
			RemoveSpawnAccess(NPC, Spawn)
		
			private_spawn_boulder = GetSpawn(Spawn, 340761)
			private_spawn_particle1 = GetSpawn(Spawn, 340747)
			private_spawn_particle2 = GetSpawn(Spawn, 341218)
			AddSpawnAccess(private_spawn_boulder, Spawn)
			AddSpawnAccess(private_spawn_particle1, Spawn)
			AddSpawnAccess(private_spawn_particle2, Spawn)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	
	if not HasQuest(Spawn, SealingTheRift) and not HasCompletedQuest(Spawn, SealingTheRift) then
		AddSpawnAccess(NPC, Spawn)
	elseif HasQuest(Spawn, SealingTheRift) and GetQuestStep(Spawn, SealingTheRift ) < 2 then
		AddSpawnAccess(NPC, Spawn)
	else
		RemoveSpawnAccess(NPC, Spawn)
	end
end

