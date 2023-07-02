--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskpawnPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.06.27 02:06:18
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
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
	MovementLoopAddLocation(NPC, -81.23, -2.72, 28.32, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -81.23, -2.72, 28.32, 2, 0)
	MovementLoopAddLocation(NPC, -78.76, -2.75, 34.11, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -78.76, -2.75, 34.11, 2, 0)
	MovementLoopAddLocation(NPC, -83.51, -2.74, 33.2, 2, 0)
	MovementLoopAddLocation(NPC, -87.66, -2.79, 40.12, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -87.66, -2.79, 40.12, 2, 0)
	MovementLoopAddLocation(NPC, -80.81, -2.74, 32.88, 2, 0)
	MovementLoopAddLocation(NPC, -79.95, -2.71, 26.69, 2, 0)
	MovementLoopAddLocation(NPC, -80.52, -2.69, 22.19, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -80.52, -2.69, 22.19, 2, 0)
	MovementLoopAddLocation(NPC, -81.09, -2.7, 24.86, 2, 0)
	MovementLoopAddLocation(NPC, -79.53, -2.71, 26.88, 2, 0)
	MovementLoopAddLocation(NPC, -75.87, -2.67, 28.44, 2, 0)
	MovementLoopAddLocation(NPC, -69.39, -2.55, 28.49, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -69.39, -2.55, 28.49, 2, 0)
	MovementLoopAddLocation(NPC, -72.51, -2.55, 28.25, 2, 0)
	MovementLoopAddLocation(NPC, -75.66, -2.64, 29.3, 2, 0)
	MovementLoopAddLocation(NPC, -78.35, -2.75, 32.73, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -78.35, -2.75, 32.73, 2, 0)
	MovementLoopAddLocation(NPC, -77.81, -2.74, 31.38, 2, 0)
	MovementLoopAddLocation(NPC, -78.2, -2.73, 28.77, 2, 0)
	MovementLoopAddLocation(NPC, -80.83, -2.71, 25.96, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -80.83, -2.71, 25.96, 2, 0)
	MovementLoopAddLocation(NPC, -79.45, -2.72, 26.99, 2, 0)
	MovementLoopAddLocation(NPC, -78.2, -2.74, 31.16, 2, math.random(10,20))
	MovementLoopAddLocation(NPC, -78.2, -2.74, 31.16, 2, 0)
	MovementLoopAddLocation(NPC, -79.12, -2.73, 29.1, 2, 0)
end

