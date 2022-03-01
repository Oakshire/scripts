--[[
    Script Name    : SpawnScripts/ShatteredVale3/aBlackMagielder5.lua
    Script Author  : Premierio015
    Script Date    : 2021.08.23 06:08:32
    Script Purpose : 
                   : 
--]]

------ Black Magi Elder's Location ID's
BlackMagiElderLocationID_1 = 361948
BlackMagiElderLocationID_2 = 361951  
BlackMagiElderLocationID_3 = 361952
BlackMagiElderLocationID_4 = 133772498
BlackMagiElderLocationID_5 = 133772499
---A Portal Abhorrent ID
local APortalAbhorrent = 361963
--- VISUAL EFFECTS
local InvisibleCubeID = 459414


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
        local InvisibleCube = GetSpawnByLocationID(zone, InvisibleCubeID)
    if not IsAlive(BlackMagiElder1) and not IsAlive(BlackMagiElder2) and  not IsAlive(BlackMagiElder3)  and  not IsAlive(BlackMagiElder4)  then
    SpawnByLocationID(zone, APortalAbhorrent)
    SpawnSet(InvisibleCube, "visual_state", 2074)
    end
end

function respawn(NPC)
	spawn(NPC)
end