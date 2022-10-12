--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper2.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 03:10:27
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
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
	MovementLoopAddLocation(NPC, 967.24, -24.25, -579.78, 1, 0)
	MovementLoopAddLocation(NPC, 963.04, -24.19, -578.36, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 963.04, -24.19, -578.36, 1, 0)
	MovementLoopAddLocation(NPC, 963.13, -26.56, -583.67, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 963.13, -26.56, -583.67, 1, 0)
	MovementLoopAddLocation(NPC, 968.03, -26.46, -584.49, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 968.03, -26.46, -584.49, 1, 0)
	MovementLoopAddLocation(NPC, 970.06, -25.19, -582.52, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 970.06, -25.19, -582.52, 1, 0)
	MovementLoopAddLocation(NPC, 975.37, -25.45, -584.33, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 975.37, -25.45, -584.33, 1, 0)
	MovementLoopAddLocation(NPC, 978.05, -24.04, -583.01, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 978.05, -24.04, -583.01, 1, 0)
	MovementLoopAddLocation(NPC, 973.35, -24.34, -581.77, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 973.35, -24.34, -581.77, 1, 0)
	MovementLoopAddLocation(NPC, 968.84, -23.41, -578.59, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 968.84, -23.41, -578.59, 1, 0)
	MovementLoopAddLocation(NPC, 967.24, -24.25, -579.78, 1, math.random(5,10))
end

