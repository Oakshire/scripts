--[[
    Script Name    : SpawnScripts/Classic_forest/aboundwatcher.lua
    Script Author  : Dorbin
    Script Date    : 2022.10.14 03:10:46
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 10
    local level2 = 11
    local difficulty1 = 6
    local hp1 = 370
    local power1 = 130
    local difficulty2 = 6
    local hp2 = 430
    local power2 = 160
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



function respawn(NPC)
	spawn(NPC)
end

function waypoints(NPC)
    if GetSpawnLocationID(NPC) == 133778186 or GetSpawnLocationID(NPC) == 133778187 then
	MovementLoopAddLocation(NPC, 1071.38, -7.6, -747.31, 1, 0)
	MovementLoopAddLocation(NPC, 1064.21, -5.87, -746.13, 1, 0)
	MovementLoopAddLocation(NPC, 1065.68, -5.87, -739.01, 1, 0)
	MovementLoopAddLocation(NPC, 1070.5, -5, -740.62, 1, 0)
	MovementLoopAddLocation(NPC, 1071.55, -5, -745.73, 1, 0)
	MovementLoopAddLocation(NPC, 1066.46, -4.14, -746.48, 1, 0)
	MovementLoopAddLocation(NPC, 1064.51, -3.01, -742.49, 1, 0)
	MovementLoopAddLocation(NPC, 1070.65, -3.01, -739.68, 1, 0)
	MovementLoopAddLocation(NPC, 1070.65, -3.01, -739.68, 1, 0)
	MovementLoopAddLocation(NPC, 1070.26, -3.01, -746.59, 1, 0)
	MovementLoopAddLocation(NPC, 1066.94, -3.01, -748.56, 1, 0)
	MovementLoopAddLocation(NPC, 1063.2, -3.01, -744.81, 1, 0)
	MovementLoopAddLocation(NPC, 1065.53, -3.39, -741.44, 1, 0)
	MovementLoopAddLocation(NPC, 1070.63, -6.64, -740.45, 1, 0)
	MovementLoopAddLocation(NPC, 1071, -6.64, -744.23, 1, 0)
	MovementLoopAddLocation(NPC, 1071.66, -10.07, -748.36, 1, 0)
	MovementLoopAddLocation(NPC, 1065.67, -10.07, -748.74, 1, 0)
	MovementLoopAddLocation(NPC, 1062.33, -10.07, -744.24, 1, 0)
	MovementLoopAddLocation(NPC, 1064.02, -10.07, -739.76, 1, 0)
	MovementLoopAddLocation(NPC, 1069.6, -10.07, -738.06, 1, 0)
	MovementLoopAddLocation(NPC, 1073.44, -10.07, -741.3, 1, 0)
	MovementLoopAddLocation(NPC, 1072.75, -10.07, -748.72, 1, 0)
	MovementLoopAddLocation(NPC, 1073.44, -10.07, -741.3, 1, 0)
	MovementLoopAddLocation(NPC, 1069.6, -10.07, -738.06, 1, 0)
	MovementLoopAddLocation(NPC, 1064.02, -10.07, -739.76, 1, 0)
	MovementLoopAddLocation(NPC, 1062.33, -10.07, -744.24, 1, 0)
	MovementLoopAddLocation(NPC, 1065.67, -10.07, -748.74, 1, 0)
	MovementLoopAddLocation(NPC, 1071.66, -10.07, -748.36, 1, 0)
	MovementLoopAddLocation(NPC, 1073, -6.64, -744.23, 1, 0)
	MovementLoopAddLocation(NPC, 1070.63, -6.64, -740.45, 1, 0)
	MovementLoopAddLocation(NPC, 1065.53, -3.39, -741.44, 1, 0)
	MovementLoopAddLocation(NPC, 1063.2, -3.01, -744.81, 1, 0)
	MovementLoopAddLocation(NPC, 1066.94, -3.01, -748.56, 1, 0)
	MovementLoopAddLocation(NPC, 1072.26, -3.01, -746.59, 1, 0)
	MovementLoopAddLocation(NPC, 1072.65, -3.01, -739.68, 1, 0)
	MovementLoopAddLocation(NPC, 1072.65, -3.01, -739.68, 1, 0)
	MovementLoopAddLocation(NPC, 1064.51, -3.01, -742.49, 1, 0)
	MovementLoopAddLocation(NPC, 1066.46, -4.14, -746.48, 1, 0)
	MovementLoopAddLocation(NPC, 1071.55, -5, -745.73, 1, 0)
	MovementLoopAddLocation(NPC, 1070.5, -5, -740.62, 1, 0)
	MovementLoopAddLocation(NPC, 1065.68, -5.87, -739.01, 1, 0)
	MovementLoopAddLocation(NPC, 1064.21, -5.87, -746.13, 1, 0)
	MovementLoopAddLocation(NPC, 1071.38, -7.6, -747.31, 1, 0)
    end
end

