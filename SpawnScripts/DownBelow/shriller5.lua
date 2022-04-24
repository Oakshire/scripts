--[[
	Script Name		:	shirller5.lua
	Script Purpose	:	Waypoint Path for shirller5.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 09:28:34 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 130
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
 waypoints(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 23.18, -0.84, -82.85, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.23, -0.89, -82.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.25, 0.56, -68.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.19, -0.08, -60.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.02, -0.11, -60.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.67, 0.53, -54.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.07, 0.57, -45.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -11.4, -0.1, -36.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.46, -0.07, -34.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.67, -0.1, -29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.64, -0.05, -32.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -18.59, -0.1, -29.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.71, -0.08, -28.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.57, -0.08, -29.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.77, -0.01, -25.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.73, 0.22, -28.16, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.77, -0.01, -25.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.57, -0.08, -29.47, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.71, -0.08, -28.93, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -18.59, -0.1, -29.39, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.64, -0.05, -32.32, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.67, -0.1, -29, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.46, -0.07, -34.83, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -11.4, -0.1, -36.65, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.07, 0.57, -45.76, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.67, 0.53, -54.89, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.02, -0.11, -60.07, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.19, -0.08, -60.51, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.25, 0.56, -68.4, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.23, -0.89, -82.98, 2, math.random(0,5))
	MovementLoopAddLocation(NPC, 23.18, -0.84, -82.85, 2, math.random(0,5))
end


