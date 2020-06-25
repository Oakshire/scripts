--[[
	Script Name		:	SpawnScripts/FrostfangSea/CraggedSpinesupplycrate.lua
	Script Purpose	:   for the supply crate spawns
	Script Author	:	theFoof
	Script Date		:	2013.7.21
	Script Notes	:	
--]]

local ClanImps = 79

function spawn(NPC)
	AddSpawnAccess(NPC, NPC)
	SetPlayerProximityFunction(NPC, 50, "SpawnAccess", "SpawnAccess")
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if HasQuest(Spawn, ClanImps) and GetQuestStep(Spawn, ClanImps) < 3 then
		if SpellName == 'stolen crate' then
			AddStepProgress(Spawn, ClanImps, 1, 1)
			local imp = SpawnMob(GetZone(NPC), 4701143, 0, GetX(Spawn) - 3, GetY(Spawn), GetZ(Spawn) - 3, 0)
			Attack(imp, Spawn)
			Despawn(NPC)
		end
	end
end

function SpawnAccess(NPC, Spawn)
	if HasQuest(Spawn, ClanImps) then
		AddSpawnAccess(NPC, Spawn)
	else
		RemoveSpawnAccess(NPC, Spawn)
	end
end