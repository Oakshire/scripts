--[[
	Script Name	: SpawnScripts/FrostfangSea/TotemoftheIcecladManta.lua
	Script Purpose	: for the totem of the iceclad manta spawn
	Script Author	: theFoof
	Script Date	: 2013.06.11
	Script Notes	: 
--]]

local BelowWaves = 59

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function SpawnAccess(NPC, Spawn)
	if HasCompletedQuest(Spawn, BelowWaves) or HasQuest(Spawn, BelowWaves) then
		if not HasItem(Spawn, 48603) then
			AddSpawnAccess(NPC, Spawn)
		end
	end
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Gather Totem of the Iceclad Manta' then
		if not HasItem(Spawn, 48603) then
			SummonItem(Spawn, 48603, 1)
			RemoveSpawnAccess(NPC, Spawn)
		end
	end
end