--[[
	Script Name		:	tomb_guard12.lua
	Script Purpose	:	Waypoint Path for tomb_guard12.lua
	Script Author	:	Devn00b
	Script Date		:	06/26/2020 05:34:17 PM
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
	MovementLoopAddLocation(NPC, 168.99, -6.91, -75.14, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 171.2, -6.97, -70.78, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 174.32, -6.88, -71.14, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 175.29, -6.74, -73.82, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 172.44, -6.95, -71.74, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 169.74, -6.89, -74.56, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 171.19, -6.94, -75.64, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 172.14, -6.97, -70.72, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 169.75, -6.97, -71.65, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 174.95, -6.93, -72.97, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 172.84, -6.94, -72.15, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 171.46, -6.95, -75.38, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 172.84, -6.94, -72.15, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 174.95, -6.93, -72.97, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 169.75, -6.97, -71.65, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 172.14, -6.97, -70.72, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 171.19, -6.94, -75.64, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 169.74, -6.89, -74.56, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 172.44, -6.95, -71.74, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 175.29, -6.74, -73.82, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 174.32, -6.88, -71.14, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 171.2, -6.97, -70.78, 2, math.random(0,7))
	MovementLoopAddLocation(NPC, 168.99, -6.91, -75.14, 2, math.random(0,7))
end


