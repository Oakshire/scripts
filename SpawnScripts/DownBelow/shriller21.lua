--[[
	Script Name		:	shriller21.lua
	Script Purpose	:	Waypoint Path for shriller21.lua
	Script Author	:	Devn00b
	Script Date		:	05/14/2020 02:15:31 AM
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
	MovementLoopAddLocation(NPC, -148.91, 2, -84.17, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -158.68, 2, -106.18, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -160.8, 2, -124.84, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -156.74, 2, -109.88, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -147.99, 2, -85.65, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -165.72, 2, -72.43, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.48, 2, -73.37, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -188.97, 2, -71.93, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.03, 2, -66.15, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.41, 2, -49.52, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.01, 2, -33.57, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.64, 2, -37.04, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.42, 2, -47.69, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.18, 2, -50.48, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.44, 2, -65.92, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.95, 2, -70.43, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.76, 2, -75.79, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.73, 2, -85.79, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -188.57, 2, -93.43, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.14, 2, -93.29, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.9, 2, -93.04, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -220.12, 2, -79.72, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -219.32, 2, -65.46, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -216.9, 2, -55.18, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -202.7, 2, -40.68, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -216.9, 2, -55.18, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -219.32, 2, -65.46, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -220.12, 2, -79.72, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -209.9, 2, -93.04, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -204.14, 2, -93.29, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -188.57, 2, -93.43, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.73, 2, -85.79, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.76, 2, -75.79, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.95, 2, -70.43, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -191.44, 2, -65.92, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.18, 2, -50.48, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -187.42, 2, -47.69, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -176.64, 2, -37.04, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -178.01, 2, -33.57, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -190.41, 2, -49.52, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -192.03, 2, -66.15, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -188.97, 2, -71.93, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -182.48, 2, -73.37, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -165.72, 2, -72.43, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -147.99, 2, -85.65, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -156.74, 2, -109.88, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -160.8, 2, -124.84, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -158.68, 2, -106.18, 1, math.random(0,5))
	MovementLoopAddLocation(NPC, -148.91, 2, -84.17, 1, math.random(0,5))
end


