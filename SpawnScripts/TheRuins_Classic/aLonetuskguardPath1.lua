--[[
    Script Name    : SpawnScripts/TheRuins_Classic/aLonetuskguardPath1.lua
    Script Author  : LordPazuzu
    Script Date    : 2023.06.27 02:06:23
    Script Purpose : 
                   : 
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 80
    local difficulty2 = 6
    local hp2 = 200
    local power2 = 90
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
	MovementLoopAddLocation(NPC, -79.45, -2.76, 36.09, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -79.45, -2.76, 36.09, 2, 0)
	MovementLoopAddLocation(NPC, -80.29, -2.75, 35.01, 2, 0)
	MovementLoopAddLocation(NPC, -83.77, -2.75, 36.04, 2, 0)
	MovementLoopAddLocation(NPC, -89.27, -2.74, 36.2, 2, 0)
	MovementLoopAddLocation(NPC, -92.34, -2.72, 33.86, 2, 0)
	MovementLoopAddLocation(NPC, -94.5, -2.69, 29.38, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -94.5, -2.69, 29.38, 2, 0)
	MovementLoopAddLocation(NPC, -92.89, -2.72, 32.87, 2, 0)
	MovementLoopAddLocation(NPC, -90.13, -2.79, 39.05, 2, 0)
	MovementLoopAddLocation(NPC, -89.78, -2.85, 42.65, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -89.78, -2.85, 42.65, 2, 0)
	MovementLoopAddLocation(NPC, -88.67, -2.8, 40.55, 2, 0)
	MovementLoopAddLocation(NPC, -85.1, -2.76, 38.42, 2, 0)
	MovementLoopAddLocation(NPC, -81.37, -2.75, 35.5, 2, 0)
	MovementLoopAddLocation(NPC, -78.04, -2.74, 30.68, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -78.04, -2.74, 30.68, 2, 0)
	MovementLoopAddLocation(NPC, -82.88, -2.73, 32.32, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -86.23, -2.73, 32.11, 2, 0)
	MovementLoopAddLocation(NPC, -93.02, -2.69, 26.93, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -93.02, -2.69, 26.93, 2, 0)
	MovementLoopAddLocation(NPC, -91.53, -2.71, 30.88, 2, 0)
	MovementLoopAddLocation(NPC, -87.36, -2.73, 32.84, 2, 0)
	MovementLoopAddLocation(NPC, -80.5, -2.74, 32.78, 2, 0)
	MovementLoopAddLocation(NPC, -78.43, -2.74, 31.84, 2, math.random(5,10))
	MovementLoopAddLocation(NPC, -78.43, -2.74, 31.84, 2, 0)

end

