--[[
	Script Name		:	shirller5.lua
	Script Purpose	:	Waypoint Path for shirller5.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 09:28:34 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 4
    local level2 = 5
    local difficulty1 = 6
    local hp1 = 110
    local power1 = 55
    local difficulty2 = 6
    local hp2 = 130
    local power2 = 65
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
	MovementLoopAddLocation(NPC, 23.18, 2, -82.85, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.23, 2, -82.98, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.25, 2, -68.4, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.19, 2, -60.51, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.02, 2, -60.07, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.67, 2, -54.89, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.07, 2, -45.76, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -11.4, 2, -36.65, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.46, 2, -34.83, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.67, 2, -29, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.64, 2, -32.32, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -18.59, 2, -29.39, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.71, 2, -28.93, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.57, 2, -29.47, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.77, 2, -25.65, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.73,2, -28.16, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.77, 2, -25.65, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -13.57, 2, -29.47, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.71, 2, -28.93, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -18.59, 2, -29.39, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.64, 2, -32.32, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -14.67, 2, -29, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -9.46, 2, -34.83, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -11.4, 2, -36.65, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -15.07, 2, -45.76, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -10.67, 2, -54.89, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -2.02, 2, -60.07, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 15.19, 2, -60.51, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.25, 2, -68.4, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 21.23, 2, -82.98, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, 23.18, 2, -82.85, 1, math.random(0,5))
end


