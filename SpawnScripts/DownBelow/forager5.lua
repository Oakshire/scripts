--[[
	Script Name		:	forager5.lua
	Script Purpose	:	Waypoint Path for forager5.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 02:55:28 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
      local Level = GetLevel(NPC)
    local level1 = 6
    local level2 = 7
    local difficulty1 = 6
    local hp1 = 150
    local power1 = 150
    local difficulty2 = 6
    local hp2 = 215
    local power2 = 215
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
	MovementLoopAddLocation(NPC, -112.17, -0.09, -113.22, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.87, -0.02, -120.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.18, -0.06, -122.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -92.53, 0.46, -132.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.72, -0.03, -138.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.68, -0.11, -143.91, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -80.82, -0.05, -133.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -78.57, -0.05, -129.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.97, -0.23, -104.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -79.43, -0.16, -103.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -57.14, -0.08, -93.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -57.15, -0.08, -86.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.25, -0.08, -68.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.7, -0.08, -66.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -33.3, -0.03, -73.19, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -43.7, -0.08, -66.32, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -52.25, -0.08, -68.26, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -57.15, -0.08, -86.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -57.14, -0.08, -93.47, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -79.43, -0.16, -103.65, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -88.97, -0.23, -104.07, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -78.57, -0.05, -129.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -80.82, -0.05, -133.29, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -87.68, -0.11, -143.91, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.72, -0.03, -138.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -92.53, 0.46, -132.08, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -96.18, -0.06, -122.17, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -104.87, -0.02, -120.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -112.17, -0.09, -113.22, 2, math.random(0,10))
end


