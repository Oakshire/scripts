--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425492.lua
	Script Purpose	:	Waypoint Path for ashoalglider425492.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:17:47 
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
	MovementLoopAddLocation(NPC, 90.02, -12.5, -21.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.84, -12.13, -33.71, 2, 0)
	MovementLoopAddLocation(NPC, 100.55, -11.68, -39.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.73, -11.48, -40.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.92, -12.24, -21.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.48, -12.2, -34.51, 2, 0)
	MovementLoopAddLocation(NPC, 85.81, -11.54, -39.05, 2, 0)
	MovementLoopAddLocation(NPC, 86.37, -11.61, -43.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.22, -11.79, -44.93, 2, 0)
	MovementLoopAddLocation(NPC, 74.75, -11.63, -48.54, 2, 0)
	MovementLoopAddLocation(NPC, 65.02, -11.91, -57.09, 2, 0)
	MovementLoopAddLocation(NPC, 55.75, -11.32, -63.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.68, -11.08, -57.68, 2, 0)
	MovementLoopAddLocation(NPC, 75.04, -10.7, -56.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.08, -10.7, -51.59, 2, 0)
	MovementLoopAddLocation(NPC, 81.75, -11.59, -41.13, 2, 0)
	MovementLoopAddLocation(NPC, 84.48, -12.08, -34.35, 2, 0)
	MovementLoopAddLocation(NPC, 87.67, -12.55, -20.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 81.1, -12.22, -9.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 86.88, -12.47, -15.06, 2, 0)
end


