--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper5.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 04:10:14
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
	MovementLoopAddLocation(NPC, 978.2, -26.75, -625.41, 1, 0)
	MovementLoopAddLocation(NPC, 983.38, -25.64, -623.13, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 983.38, -25.64, -623.13, 1, 0)
	MovementLoopAddLocation(NPC, 985.28, -25.46, -620.51, 1, 0)
	MovementLoopAddLocation(NPC, 985.48, -25.43, -616.28, 1, 0)
	MovementLoopAddLocation(NPC, 986.65, -25.77, -610.79, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 986.65, -25.77, -610.79, 1, 0)
	MovementLoopAddLocation(NPC, 987.61, -24.44, -613.73, 1, 0)
	MovementLoopAddLocation(NPC, 986.85, -24.41, -615.73, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 986.85, -24.41, -615.73, 1, 0)
	MovementLoopAddLocation(NPC, 984.23, -26.13, -620.43, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 984.23, -26.13, -620.43, 1, 0)
	MovementLoopAddLocation(NPC, 982.4, -24.32, -625.96, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 982.4, -24.32, -625.96, 1, 0)
	MovementLoopAddLocation(NPC, 973.66, -24.45, -631.17, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 973.66, -24.45, -631.17, 1, 0)
	MovementLoopAddLocation(NPC, 969.74, -27.44, -630.71, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 969.74, -27.44, -630.71, 1, 0)
	MovementLoopAddLocation(NPC, 978.2, -26.75, -625.41, 1, math.random(5,10))
end

