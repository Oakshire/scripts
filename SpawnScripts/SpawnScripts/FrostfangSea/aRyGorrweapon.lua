--[[
	Script Name	: SpawnScripts/FrostfangSea/aRyGorrweapon.lua
	Script Purpose	: for the spawn "a Ry'Gorr weapon"
	Script Author	: theFoof
	Script Date	: 2013.06.3
	Script Notes	: 
--]]
local DisarmingRyGorr = 48

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'Poultice' then
		if GetQuestStep(Spawn, DisarmingRyGorr) == 1 then
		    SpawnSet(NPC, "action_state", "2602")
		    AddStepProgress(Spawn, DisarmingRyGorr, 1, 1)
		    Despawn(NPC)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if GetQuestStep(Spawn, DisarmingRyGorr) == 1 then
		AddSpawnAccess(NPC, Spawn)
	else 
		RemoveSpawnAccess(NPC, Spawn)
	end
end