--[[
    Script Name    : SpawnScripts/ForestRuins/aspectralinstructor.lua
    Script Author  : Dorbin/LordPazuzu
    Script Date    : 2022.02.26 11:02:09
    Script Purpose : Looping instructor pathing/emotes
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 =11
    local level2 = 12
    local difficulty1 = 6
    local hp1 = 430
    local power1 = 160
    local difficulty2 = 6
    local hp2 = 450
    local power2 = 190
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
    end
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC)==424804 then
    MovementLoopAddLocation(NPC, 1070.56, -4.3, -765.76, 2, 0)
	MovementLoopAddLocation(NPC, 1083.47, -4.3, -759.94, 2, 0)
	MovementLoopAddLocation(NPC, 1087.85, -5.5, -753.82, 2, 0)
	MovementLoopAddLocation(NPC, 1090.39, -10.05, -744.45, 2, 0)
	MovementLoopAddLocation(NPC, 1083.6, -10.25, -736.13, 2, 0)
	MovementLoopAddLocation(NPC, 1071.57, -10.25, -731.76, 2, 0)
	MovementLoopAddLocation(NPC, 1057.64, -10.25, -738.46, 2, 0)
	MovementLoopAddLocation(NPC, 1054.39, -10.25, -748.41, 2, 0)
	MovementLoopAddLocation(NPC, 1050.12, -10.25, -767.95, 2, 0)
	MovementLoopAddLocation(NPC, 1055.54, -10.25, -772.17, 2, 0)
	MovementLoopAddLocation(NPC, 1056.9, -10.25, -781.29, 2, 0)
	MovementLoopAddLocation(NPC, 1063.09, -10.25, -789.2, 2, 0)
	MovementLoopAddLocation(NPC, 1062.33, -10.25, -790.59, 2, 0)
	MovementLoopAddLocation(NPC, 1056.98, -10.25, -780.3, 2, 0)
	MovementLoopAddLocation(NPC, 1055.73, -10.25, -772.32, 2, 0)
	MovementLoopAddLocation(NPC, 1046.37, -10.25, -767.82, 2, 0)
	MovementLoopAddLocation(NPC, 1037.32, -10.25, -769.86, 2, 0)
	MovementLoopAddLocation(NPC, 1034.95, -10.25, -769.62, 2, 0)
	MovementLoopAddLocation(NPC, 1034.38, -10.25, -767.39, 2, 0)
	MovementLoopAddLocation(NPC, 1040.4, -10.25, -765.13, 2, 0)
	MovementLoopAddLocation(NPC, 1042.44, -10.25, -754.56, 2, 0)
	MovementLoopAddLocation(NPC, 1054.32, -10.25, -755.92, 2, 0)
	
	else if GetSpawnLocationID(NPC)==424825 then
    MovementLoopAddLocation(NPC, 1111.34, -10.25, -724.74, 2, 0)
	MovementLoopAddLocation(NPC, 1090.59, -10.25, -734.93, 2, 0)
	MovementLoopAddLocation(NPC, 1087.82, -7.68, -748.95, 2, 0)
	MovementLoopAddLocation(NPC, 1083.25, -4.3, -757.96, 2, 0)
	MovementLoopAddLocation(NPC, 1070.91, -4.31, -771.59, 2, 0)
	MovementLoopAddLocation(NPC, 1071.26, -4.31, -782.76, 2, 0)
	MovementLoopAddLocation(NPC, 1080.1, -4.3, -787.17, 2, 0)
	MovementLoopAddLocation(NPC, 1096.85, -4.3, -780.46, 2, 0)
	MovementLoopAddLocation(NPC, 1096.53, -4.31, -770.27, 2, 0)
	MovementLoopAddLocation(NPC, 1088.14, -4.31, -762.58, 2, 0)
	MovementLoopAddLocation(NPC, 1069.82, -4.3, -762.9, 2, 0)
	MovementLoopAddLocation(NPC, 1060.85, -8.1, -759.86, 2, 0)
	MovementLoopAddLocation(NPC, 1053.36, -10.25, -753.97, 2, 0)
	MovementLoopAddLocation(NPC, 1057.18, -10.25, -748.81, 2, 0)
	MovementLoopAddLocation(NPC, 1065.7, -10.25, -755.94, 2, 0)
	MovementLoopAddLocation(NPC, 1077.96, -10.25, -751.21, 2, 0)
	MovementLoopAddLocation(NPC, 1080.84, -10.25, -739.33, 2, 0)
end

end
end

