--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper12.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 07:10:04
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local level3 = 7
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
    local difficulty3 =6
    local hp3 = 200
    local power3 = 90
    if Level == level1 then
    SpawnSet(NPC, "difficulty", difficulty1)
    SpawnSet(NPC, "hp", hp1)
    SpawnSet(NPC, "power", power1)
    elseif Level == level2
        then
    SpawnSet(NPC, "difficulty", difficulty2)
    SpawnSet(NPC, "hp", hp2)
    SpawnSet(NPC, "power", power2)
     elseif Level == level3
        then
    SpawnSet(NPC, "difficulty", difficulty3)
    SpawnSet(NPC, "hp", hp3)
    SpawnSet(NPC, "power", power3)
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
	MovementLoopAddLocation(NPC, 1109.19, -22.05, -700.64, 1, 0)
	MovementLoopAddLocation(NPC, 1108.31, -19.77, -704.5, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1108.31, -19.77, -704.5, 1, 0)
	MovementLoopAddLocation(NPC, 1102.46, -23.66, -699.26, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1102.46, -23.66, -699.26, 1, 0)
	MovementLoopAddLocation(NPC, 1102.93, -21.92, -693.73, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1102.93, -21.92, -693.73, 1, 0)
	MovementLoopAddLocation(NPC, 1104.91, -20.81, -690.86, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1104.91, -20.81, -690.86, 1, 0)
	MovementLoopAddLocation(NPC, 1102.51, -22.55, -694.51, 1, 0)
	MovementLoopAddLocation(NPC, 1104.59, -22.47, -699.92, 1, 0)
	MovementLoopAddLocation(NPC, 1107.15, -20.95, -702.57, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1107.15, -20.95, -702.57, 1, 0)
	MovementLoopAddLocation(NPC, 1113.34, -20.47, -704.03, 1, 0)
	MovementLoopAddLocation(NPC, 1118.66, -21.07, -706.88, 1, 0)
	MovementLoopAddLocation(NPC, 1124.32, -23.75, -708.75, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1124.32, -23.75, -708.75, 1, 0)
	MovementLoopAddLocation(NPC, 1119, -23.43, -704.66, 1, 0)
	MovementLoopAddLocation(NPC, 1113.87, -23.26, -701.09, 1, 0)
	MovementLoopAddLocation(NPC, 1111.56, -19.83, -704.16, 1, 0)
	MovementLoopAddLocation(NPC, 1108.13, -18.51, -707.64, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1108.13, -18.51, -707.64, 1, 0)
	MovementLoopAddLocation(NPC, 1102.74, -20.13, -712.21, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 1102.74, -20.13, -712.21, 1, 0)
	MovementLoopAddLocation(NPC, 1105.53, -19.26, -708.44, 1, 0)
	MovementLoopAddLocation(NPC, 1107.75, -19.42, -705.45, 1, 0)
	MovementLoopAddLocation(NPC, 1109.19, -22.05, -700.64, 1, math.random(5,10))
end

