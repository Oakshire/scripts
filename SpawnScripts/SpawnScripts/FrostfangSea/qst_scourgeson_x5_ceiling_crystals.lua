--[[
	Script Name		:	SpawnScripts/FrostfangSea/qst_scourgeson_x5_ceiling_crystals.lua
	Script Purpose	:	for the ceiling crystal spawns in the velinoid caves
	Script Author	:	theFoof
	Script Date		:	2013.7.18
	Script Notes	:	
--]]

local WatchBelow = 77

function spawn(NPC)
	SetRequiredQuest(NPC, WatchBelow, 1)
end

function respawn(NPC)
	spawn(NPC)
end

function casted_on(NPC, Spawn, SpellName)
	if SpellName == 'knock off a crystal' then
		x = GetX(NPC)
		z = GetZ(NPC)
		SetTempVariable(Spawn, "crystal_x", x)
		SetTempVariable(Spawn, "crystal_z", z)
		SetSpeed(NPC, 5)
		AddTimer(NPC, 3000, "SpawnCrystal", 1, Spawn)
		MoveToLocation(NPC, x, GetY - 25, z)
	end
end

function SpawnCrystal(NPC, Spawn)
	SpawnMob(GetZone(NPC), 4701752, 0, GetTempVariable(Spawn, "crystal_x"), GetY(Spawn), GetTempVariable(Spawn, "crystal_z"), GetHeading(NPC))
	Despawn(NPC)
	SetTempVariable(Spawn, "crystal_x", nil)
	SetTempVariable(Spawn, "crystal_z", nil)
end
