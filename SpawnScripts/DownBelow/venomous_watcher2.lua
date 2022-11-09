--[[
	Script Name		:	venomous_watcher2.lua
	Script Purpose	:	Waypoint Path for venomous_watcher2.lua
	Script Author	:	Devn00b
	Script Date		:	05/13/2020 01:30:21 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 8
    local level2 = 9
    local difficulty1 = 6
    local hp1 = 240
    local power1 = 100
    local difficulty2 = 6
    local hp2 = 275
    local power2 = 110
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
	MovementLoopAddLocation(NPC, -126.43, 0, -197.7, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.02, 0, -206.68, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.97, 0, -200.74, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.23, 0, -191.26, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.06, 0, -191.63, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -105.5, 0, -191.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -108.92, 0, -191.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.26, 0, -191.72, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.68, 0, -203.09, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.9, 0, -205.65, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.56, 0, -205.87, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.6, 0, -200.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.6, 0, -200.55, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.32, 0, -194.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.81, 0, -191.23, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.42, 0, -190.42, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.15, 0, -194.24, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.48, 0, -198.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.03, 0, -203.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.86, 0, -197.24, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.32, 0, -194.36, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.47, 0, -191.09, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.65, 0, -192.17, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.87, 0, -204.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.11, 0, -205.98, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.93, 0, -200.87, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.43, 0, -200.99, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.93, 0, -200.87, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.11, 0, -205.98, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.87, 0, -204.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.65, 0, -192.17, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -122.47, 0, -191.09, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.32, 0, -194.36, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.86, 0, -197.24, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.03, 0, -203.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -127.48, 0, -198.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.15, 0, -194.24, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.42, 0, -190.42, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -123.81, 0, -191.23, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.32, 0, -194.57, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.6, 0, -200.55, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -129.6, 0, -200.82, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -130.56, 0, -205.87, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -125.9, 0, -205.65, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.68, 0, -203.09, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.26, 0, -191.72, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -108.92, 0, -191.41, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -105.5, 0, -191.53, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -119.06, 0, -191.63, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -121.23, 0, -191.26, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -120.97, 0, -200.74, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -128.02, 0, -206.68, 2, math.random(0,20))
	MovementLoopAddLocation(NPC, -126.43, 0, -197.7, 2, math.random(0,20))
end


