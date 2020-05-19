--[[
	Script Name	: Quests/FrostfangSea/halas_three_barrels_snow.lua
	Script Purpose	: the spawns "halas_three_barrels_snow_01" and "halas_three_barrels_snow_02"
	Script Author	: theFoof
	Script Date	: 2013.5.14
--]]

local RepellingCritters = 7

function spawn(NPC)
    SetRequiredQuest(NPC, RepellingCritters, 3)
end

function casted_on(NPC, Spawn, SpellName)
    if SpellName == "Apply the Repellent" and GetQuestStep(Spawn, RepellingCritters) == 3 then
	    SetStepComplete(Spawn, RepellingCritters, 3)
	    local zone = GetZone(NPC) -- the following code removes access from publicly spawned raiders, spawns new raiders, makes them path 35 meters south, then despawns them
		local raider = GetSpawnByLocationID(zone, 14)
		RemoveSpawnAccess(raider, Spawn)
	    local new = SpawnByLocationID(zone, 14)
		AddSpawnAccess(new, Spawn)
		SpawnRaider(new)
		local raider = GetSpawnByLocationID(zone, 15)
		RemoveSpawnAccess(raider, Spawn)
	    local new = GetSpawnByLocationID(zone, 15)
		AddSpawnAccess(new, Spawn)
		SpawnRaider(new)
    	local raider = GetSpawnByLocationID(zone, 26)
		RemoveSpawnAccess(raider, Spawn)
	    local new = SpawnByLocationID(zone, 26)
		AddSpawnAccess(new, Spawn)
		SpawnRaider(new)
    	local raider = GetSpawnByLocationID(zone, 33)
		RemoveSpawnAccess(raider, Spawn)
	    local new = SpawnByLocationID(zone, 33)
		AddSpawnAccess(new, Spawn)
		SpawnRaider(new)
	    local raider = GetSpawnByLocationID(zone, 38)
		RemoveSpawnAccess(raider, Spawn)
	    local new = SpawnByLocationID(zone, 38)
		AddSpawnAccess(new, Spawn)
		SpawnRaider(new)
	    local raider = GetSpawnByLocationID(zone, 48)
		RemoveSpawnAccess(raider, Spawn)
	    local new = SpawnByLocationID(zone, 48)
		AddSpawnAccess(new, Spawn)
		SpawnRaider(new)
	    local raider = GetSpawnByLocationID(zone, 50)
		RemoveSpawnAccess(raider, Spawn)
	    local new = SpawnByLocationID(zone, 50)
		SpawnRaider(new)
    	local raider = GetSpawnByLocationID(zone, 74)
		RemoveSpawnAccess(raider, Spawn)
	    local new = SpawnByLocationID(zone, 74)
		AddSpawnAccess(new, Spawn)
		SpawnRaider(new)
	end
end

function SpawnRaider(NPC)
    X = GetX(NPC)
    Y = GetY(NPC)
   	Z = GetZ(NPC)
	SetSpeed(NPC, 13)
    MoveToLocation(NPC, X, Y, Z + 35) 
	AddTimer(NPC, 3000, "Despawn")
end