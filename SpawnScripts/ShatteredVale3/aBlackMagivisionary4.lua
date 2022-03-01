--[[
    Script Name    : SpawnScripts/ShatteredVale3/aBlackMagivisionary4.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.23 06:08:24
    Script Purpose : 
                   : 
--]]

------ Black Magi Elder's Location ID's
BlackMagiElderLocationID_1 = 361948
BlackMagiElderLocationID_2 = 361951  
BlackMagiElderLocationID_3 = 361952
BlackMagiElderLocationID_4 = 133772498
BlackMagiElderLocationID_5 = 133772499

function spawn(NPC)

end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function death(NPC, Spawn)
    local zone = GetZone(Spawn)
    local BlackMagiElder1 = GetSpawnByLocationID(zone, BlackMagiElderLocationID_1)
    local BlackMagiElder2 = GetSpawnByLocationID(zone, BlackMagiElderLocationID_2)
    local BlackMagiElder3 = GetSpawnByLocationID(zone, BlackMagiElderLocationID_3)
    local BlackMagiElder4 = GetSpawnByLocationID(zone, BlackMagiElderLocationID_4)
     local BlackMagiElder5 = GetSpawnByLocationID(zone, BlackMagiElderLocationID_5)
    local Spawn1 = GetSpawnByLocationID(zone, 361940)
    local Spawn2 = GetSpawnByLocationID(zone, 361945)
    local Spawn3 = GetSpawnByLocationID(zone, 361942)
    if not IsAlive(Spawn1) and not IsAlive(Spawn2) and not IsAlive(Spawn3) then
    SpawnSet(BlackMagiElder1, "attackable", 1)
    SpawnSet(BlackMagiElder1, "show_level", 1)
    SpawnSet(BlackMagiElder1, "faction", 1)
    SpawnSet(BlackMagiElder2, "attackable", 1)
    SpawnSet(BlackMagiElder2, "show_level", 1)
    SpawnSet(BlackMagiElder2, "faction", 1)
    SpawnSet(BlackMagiElder3, "attackable", 1)
    SpawnSet(BlackMagiElder3, "show_level", 1)
    SpawnSet(BlackMagiElder3, "faction", 1) 
    SpawnSet(BlackMagiElder4, "attackable", 1)
    SpawnSet(BlackMagiElder4, "show_level", 1)
    SpawnSet(BlackMagiElder4, "faction", 1) 
    SpawnSet(BlackMagiElder5, "attackable", 1)
    SpawnSet(BlackMagiElder5, "show_level", 1)
    SpawnSet(BlackMagiElder5, "faction", 1) 
    end
end

function respawn(NPC)
	spawn(NPC)
end