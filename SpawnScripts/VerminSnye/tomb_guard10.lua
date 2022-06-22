--[[
	Script Name		:	tomb_guard10.lua
	Script Purpose	:	Waypoint Path for tomb_guard10.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 04:04:03 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
     local Level = GetLevel(NPC)
    local level1 =14
    local level2 = 15
    local difficulty1 = 6
    local hp1 = 795
    local power1 = 240
    local difficulty2 = 6
    local hp2 = 920
    local power2 = 270
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
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 220.34, -6.83, -114.82, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 222.69, -6.74, -118.5, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 217.45, -6.8, -115.06, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 215.49, -6.74, -118.59, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 219.72, -6.83, -122.01, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 219.87, -6.86, -118.04, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 216.59, -6.78, -116.37, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 220.82, -6.83, -120.58, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 216.79, -6.76, -116.82, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 221.97, -6.79, -118.9, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 221.6, -6.73, -117.52, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 218.32, -6.83, -118.13, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 216.93, -6.78, -116.06, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 218.76, -6.85, -114.88, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 217.71, -6.75, -116.22, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 219.16, -6.79, -119.13, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 217.71, -6.75, -116.22, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 218.76, -6.85, -114.88, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 216.93, -6.78, -116.06, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 218.32, -6.83, -118.13, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 221.6, -6.73, -117.52, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 221.97, -6.79, -118.9, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 216.79, -6.76, -116.82, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 220.82, -6.83, -120.58, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 216.59, -6.78, -116.37, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 219.87, -6.86, -118.04, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 219.72, -6.83, -122.01, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 215.49, -6.74, -118.59, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 217.45, -6.8, -115.06, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 222.69, -6.74, -118.5, 2, math.random(0,25))
	MovementLoopAddLocation(NPC, 220.34, -6.83, -114.82, 2, math.random(0,25))
end


