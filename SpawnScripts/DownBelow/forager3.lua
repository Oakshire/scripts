--[[
	Script Name		:	forager3.lua
	Script Purpose	:	Waypoint Path for forager3.lua
	Script Author	:	Devn00b
	Script Date		:	05/12/2020 12:51:03 PM
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
	MovementLoopAddLocation(NPC, -99.62, -0.08, -120.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.65, -0.06, -135.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.72, -0.08, -139.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.29, -0.06, -141.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.12, -0.08, -134.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.59, -0.08, -127.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.36, -0.04, -121.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.34, -0.11, -108.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -75.67, -0.11, -109.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -67.2, -0.11, -97.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -58.84, -0.07, -95.67, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -59.26, -0.08, -84.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.08, -0.08, -71.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -48.77, -0.09, -64.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -37.84, -0.1, -68.68, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -48.77, -0.09, -64.95, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -55.08, -0.08, -71.06, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -59.26, -0.08, -84.87, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -58.84, -0.07, -95.67, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -67.2, -0.11, -97.82, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -75.67, -0.11, -109.61, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.34, -0.11, -108.14, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.36, -0.04, -121.45, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.59, -0.08, -127.34, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -76.12, -0.08, -134.93, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -90.29, -0.06, -141.64, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -86.72, -0.08, -139.76, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -84.65, -0.06, -135.33, 2, math.random(0,10))
	MovementLoopAddLocation(NPC, -99.62, -0.08, -120.93, 2, math.random(0,10))
end


