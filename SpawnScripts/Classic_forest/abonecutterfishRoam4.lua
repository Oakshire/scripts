--[[
    Script Name    : SpawnScripts/Classic_forest/abonecutterfishRoam4.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.13 03:10:52
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 7
    local level2 = 8
    local difficulty1 = 6
    local hp1 = 200
    local power1 = 90
    local difficulty2 = 6
    local hp2 = 240
    local power2 = 100
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
	spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 993.56, -24.38, -768.25, 1, 0)
	MovementLoopAddLocation(NPC, 994.45, -24.32, -764.43, 1, 0)
	MovementLoopAddLocation(NPC, 1000.74, -23.91, -757.57, 1, 0)
	MovementLoopAddLocation(NPC, 1011.55, -23.88, -748.17, 1, 0)
	MovementLoopAddLocation(NPC, 1020.09, -24.14, -742.89, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1020.09, -24.14, -742.89, 1, 0)
	MovementLoopAddLocation(NPC, 1015.36, -23.9, -742.29, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1015.36, -23.9, -742.29, 1, 0)
	MovementLoopAddLocation(NPC, 1020.01, -24.01, -745.14, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1020.01, -24.01, -745.14, 1, 0)
	MovementLoopAddLocation(NPC, 1011.44, -23.89, -747.89, 1, 0)
	MovementLoopAddLocation(NPC, 1004.1, -23.82, -753.92, 1, 0)
	MovementLoopAddLocation(NPC, 996.82, -23.93, -760.65, 1, 0)
	MovementLoopAddLocation(NPC, 991.69, -24.37, -769.97, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 991.69, -24.37, -769.97, 1, 0)
	MovementLoopAddLocation(NPC, 985.58, -24.32, -772.37, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 985.58, -24.37, -772.37, 1, 0)
	MovementLoopAddLocation(NPC, 993.56, -24.37, -768.25, 1, math.random(5,10))
end

