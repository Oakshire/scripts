--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425471.lua
	Script Purpose	:	Waypoint Path for ashoalglider425471.lua
	Script Author	:	Rylec
	Script Date	:	10-25-2019 05:18:08 
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
	MovementLoopAddLocation(NPC, -62.28, -11.43, 266.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -53.26, -12.23, 250.92, 2, 0)
	MovementLoopAddLocation(NPC, -50.33, -11.45, 244.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.25, -11.83, 248.06, 2, 0)
	MovementLoopAddLocation(NPC, -74.26, -11.8, 252, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -71.63, -11.4, 255.71, 2, 0)
	MovementLoopAddLocation(NPC, -68.04, -11.98, 259.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -71.28, -12.52, 256.67, 2, 0)
	MovementLoopAddLocation(NPC, -76.44, -13.12, 248.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -70.69, -12.32, 250.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.33, -11.82, 266.28, 2, 0)
	MovementLoopAddLocation(NPC, -36.04, -12.14, 270.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -26.08, -11.72, 274.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.65, -11.95, 270.44, 2, 0)
	MovementLoopAddLocation(NPC, -44.86, -12.41, 255.47, 2, 0)
	MovementLoopAddLocation(NPC, -50.37, -12.74, 251.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.92, -12.31, 255.91, 2, 0)
	MovementLoopAddLocation(NPC, -37.19, -12.39, 259.72, 2, 0)
	MovementLoopAddLocation(NPC, -26.27, -11.84, 264.77, 2, 0)
	MovementLoopAddLocation(NPC, -24.29, -11.52, 264.68, 2, math.random(10, 20))
end

