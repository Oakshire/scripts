--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425790.lua
	Script Purpose	:	Waypoint Path for atriggerfish425790.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:15 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 56.44, -11.01, -82.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.16, -10.5, -79.41, 2, 0)
	MovementLoopAddLocation(NPC, 74.71, -10.32, -57.45, 2, 0)
	MovementLoopAddLocation(NPC, 76.53, -10.47, -50.45, 2, 0)
	MovementLoopAddLocation(NPC, 98.26, -10.99, -17.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.43, -11.96, -37.26, 2, 0)
	MovementLoopAddLocation(NPC, 73.55, -11.98, -43.33, 2, 0)
	MovementLoopAddLocation(NPC, 69.61, -11.99, -47.46, 2, 0)
	MovementLoopAddLocation(NPC, 67.22, -11.88, -51.12, 2, 0)
	MovementLoopAddLocation(NPC, 60.57, -11.47, -59.66, 2, 0)
	MovementLoopAddLocation(NPC, 50.67, -11.02, -71.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.35, -10.06, -86.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.16, -10.77, -81.47, 2, 0)
	MovementLoopAddLocation(NPC, 35.06, -10.31, -75.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.65, -11.52, -81.55, 2, 0)
	MovementLoopAddLocation(NPC, 25.39, -11.45, -88.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.32, -11.85, -71.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.6, -11.29, -81.69, 2, 0)
	MovementLoopAddLocation(NPC, 40.52, -10.2, -84.02, 2, 0)
	MovementLoopAddLocation(NPC, 37.92, -10.2, -88.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.55, -10.98, -52.28, 2, 0)
	MovementLoopAddLocation(NPC, 81.53, -12.03, -35.83, 2, 0)
	MovementLoopAddLocation(NPC, 86.29, -12.02, -31.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 100.25, -11.93, -35.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.99, -10.31, -43.99, 2, 0)
	MovementLoopAddLocation(NPC, 80.33, -10.25, -47.33, 2, 0)
	MovementLoopAddLocation(NPC, 76.18, -10.4, -50.28, 2, 0)
end


