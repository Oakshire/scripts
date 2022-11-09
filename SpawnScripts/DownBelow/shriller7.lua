--[[
	Script Name		:	shriller9.lua
	Script Purpose	:	Waypoint Path for shriller9.lua
	Script Author	:	Devn00b
	Script Date		:	05/11/2020 04:19:30 PM
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
	MovementLoopAddLocation(NPC, -32.08, 2, -126.98, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.7, 2, -133.88, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.12, 2, -148.32, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -62.12, 2, -153.16, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.97, 2, -153.36, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.67, 2, -152.46, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.75, 2, -158.12, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.75, 2, -164.71, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.67, 2, -164.52, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.19, 2, -167.97, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.94, 2, -168.17, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.25, 2, -162.13, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.24, 2, -162.4, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.25, 2, -163.47, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.79, 2, -165.09, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.99, 2, -167.8, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -97.39, 2, -168.1, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.65, 2, -162.15, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.02, 2, -166.36, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.15, 2, -165.93, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.58, 2, -157.74, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -82.5, 2, -153.75, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.58, 2, -157.74, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.15, 2, -165.93, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.02, 2, -166.36, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.65, 2, -162.15, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -97.39, 2, -168.1, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.99, 2, -167.8, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -94.79, 2, -165.09, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -100.25, 2, -163.47, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.24, 2, -162.4, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.25, 2, -162.13, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.94, 2, -168.17, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -95.19, 2, -167.97, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.67, 2, -164.52, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.75, 2, -164.71, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.75, 2, -158.12, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -85.67, 2, -152.46, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -70.97, 2, -153.36, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -62.12, 2, -153.16, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.12, 2, -148.32, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -36.7, 2, -133.88, 1, math.random(0,10))
	MovementLoopAddLocation(NPC, -32.08, 2, -126.98, 1, math.random(0,10))
end


