--[[
	Script Name		:	burrower.lua
	Script Purpose	:	Waypoint Path for burrower.lua
	Script Author	:	Devn00b
	Script Date		:	05/10/2020 08:32:19 PM
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
    local Level = GetLevel(NPC)
    local level1 = 5
    local level2 = 6
    local difficulty1 = 6
    local hp1 = 130
    local power1 = 65
    local difficulty2 = 6
    local hp2 = 150
    local power2 = 80
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
	MovementLoopAddLocation(NPC, -12.18, -0.06, -51.92, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -9.51, -0.09, -49.89, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.05, -0.06, -51.26, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -17.27, 0.12, -47.91, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -10.9, 0.53, -52.98, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -2.79, -0.1, -59.82, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 7.88, -0.04, -57.73, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 1.22, -0.04, -62.93, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 0.97, -0.08, -57.24, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 15, -0.11, -60.8, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 21.34, 0.51, -67.77, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 18.62, -0.48, -74.79, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.89, -0.92, -77.83, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 19.3, -0.24, -86.25, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 22.91, 0.07, -87.14, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.44, 0.18, -95.11, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 13.87, 0.13, -104.19, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 11.42, 0.29, -101.65, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 21.33, 0.03, -99.6, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 17.99, 0.14, -94.94, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.07, 0.22, -95.19, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 24.51, 0.2, -90.25, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 20.12, 0.32, -89.3, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.84, -0.92, -78.08, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 20.12, 0.32, -89.3, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 24.51, 0.2, -90.25, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.07, 0.22, -95.19, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 17.99, 0.14, -94.94, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 21.33, 0.03, -99.6, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 11.42, 0.29, -101.65, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 13.87, 0.13, -104.19, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.44, 0.18, -95.11, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 22.91, 0.07, -87.14, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 19.3, -0.24, -86.25, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 23.89, -0.92, -77.83, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 18.62, -0.48, -74.79, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 21.34, 0.51, -67.77, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 15, -0.11, -60.8, 2, math.random(0,2))
	MovementLoopAddLocation(NPC, 0.97, -0.08, -57.24, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 1.22, -0.04, -62.93, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, 7.88, -0.04, -57.73, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -2.79, -0.1, -59.82, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -10.9, 0.53, -52.98, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -17.27, 0.12, -47.91, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -15.05, -0.06, -51.26, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -9.51, -0.09, -49.89, 1, math.random(0,2))
	MovementLoopAddLocation(NPC, -12.18, -0.06, -51.92, 1, math.random(0,2))

end
