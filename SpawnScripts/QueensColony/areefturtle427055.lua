--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427055.lua
	Script Purpose	:	Waypoint Path for areefturtle427055.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:14:09 
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
	MovementLoopAddLocation(NPC, 82.65, -11.76, -31.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.49, -12.01, -35.12, 2, 0)
	MovementLoopAddLocation(NPC, 74.78, -11.87, -48.19, 2, 0)
	MovementLoopAddLocation(NPC, 73.6, -12.05, -51.27, 2, 0)
	MovementLoopAddLocation(NPC, 72.85, -11.88, -56.92, 2, 0)
	MovementLoopAddLocation(NPC, 74.7, -11.62, -66.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.41, -11.05, -73.55, 2, 0)
	MovementLoopAddLocation(NPC, 71.36, -11.06, -77.03, 2, 0)
	MovementLoopAddLocation(NPC, 71.7, -11.04, -81.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.03, -10.46, -69.95, 2, 0)
	MovementLoopAddLocation(NPC, 76.46, -10.45, -43.83, 2, 0)
	MovementLoopAddLocation(NPC, 79.95, -11.46, -35.04, 2, 0)
	MovementLoopAddLocation(NPC, 87.64, -12.76, -23.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.52, -12.85, -33.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.87, -12.37, -42.33, 2, 0)
	MovementLoopAddLocation(NPC, 73.16, -11.76, -51.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.32, -11.76, -72.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.11, -11, -52.56, 2, 0)
	MovementLoopAddLocation(NPC, 77.44, -11.22, -35.27, 2, 0)
	MovementLoopAddLocation(NPC, 82.55, -11.7, -31.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.7, -11.77, -23.71, 2, 0)
	MovementLoopAddLocation(NPC, 77.34, -11.6, -18.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.09, -11.64, -24.91, 2, 0)
end


