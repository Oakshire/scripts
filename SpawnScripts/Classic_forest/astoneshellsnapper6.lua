--[[
    Script Name    : SpawnScripts/Classic_forest/astoneshellsnapper6.lua
    Script Author  : LordPazuzu
    Script Date    : 2022.10.12 04:10:44
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
	MovementLoopAddLocation(NPC, 963.68, -24.08, -637.53, 1, 0)
	MovementLoopAddLocation(NPC, 957.73, -25.46, -634.93, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 957.73, -25.46, -634.93, 1, 0)
	MovementLoopAddLocation(NPC, 955.8, -27.23, -632.87, 1, 0)
	MovementLoopAddLocation(NPC, 950.77, -26.45, -633.32, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 950.77, -26.45, -633.32, 1, 0)
	MovementLoopAddLocation(NPC, 957.09, -26.03, -634.13, 1, 0)
	MovementLoopAddLocation(NPC, 958.41, -24.47, -636.4, 1, 0)
	MovementLoopAddLocation(NPC, 961.45, -23.55, -639.12, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 961.45, -23.55, -639.12, 1, 0)
	MovementLoopAddLocation(NPC, 968.27, -22.76, -637.23, 1, 0)
	MovementLoopAddLocation(NPC, 972.34, -22.49, -634.14, 1, 0)
	MovementLoopAddLocation(NPC, 978.9, -25.29, -627.6, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 978.9, -25.29, -627.6, 1, 0)
	MovementLoopAddLocation(NPC, 973.03, -26.06, -629.85, 1, 0)
	MovementLoopAddLocation(NPC, 966.01, -27.11, -633.89, 1, 0)
	MovementLoopAddLocation(NPC, 961.09, -26.28, -635.24, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 961.09, -26.28, -635.24, 1, 0)
	MovementLoopAddLocation(NPC, 958.92, -24.58, -636.43, 1, 0)
	MovementLoopAddLocation(NPC, 958.85, -22.79, -639.16, 1, math.random(5,10))
	MovementLoopAddLocation(NPC, 958.85, -22.79, -639.16, 1, 0)
	MovementLoopAddLocation(NPC, 963.68, -24.08, -637.53, 1, math.random(5,10))
end

