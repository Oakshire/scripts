--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425527.lua
	Script Purpose	:	Waypoint Path for ashoalglider425527.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:13 
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
	MovementLoopAddLocation(NPC, -119.49, -11.8, 216.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.38, -13.12, 225.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -91.52, -13.03, 225.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -92.96, -12.94, 223.99, 2, 0)
	MovementLoopAddLocation(NPC, -105.88, -13.04, 223.53, 2, 0)
	MovementLoopAddLocation(NPC, -124.67, -11.88, 208.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.89, -12.93, 223.5, 2, 0)
	MovementLoopAddLocation(NPC, -142.58, -14.39, 231.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.9, -13.94, 223.85, 2, 0)
	MovementLoopAddLocation(NPC, -124.89, -13.17, 221.05, 2, 0)
	MovementLoopAddLocation(NPC, -123.91, -12.96, 217.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -100.26, -12.99, 202.88, 2, 0)
	MovementLoopAddLocation(NPC, -87.8, -11.93, 197.09, 2, 0)
	MovementLoopAddLocation(NPC, -78.42, -11.19, 191.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -85.33, -11.84, 201.48, 2, 0)
	MovementLoopAddLocation(NPC, -88.21, -12.05, 204.27, 2, 0)
	MovementLoopAddLocation(NPC, -88.32, -12.1, 206.36, 2, 0)
	MovementLoopAddLocation(NPC, -99.22, -11.84, 218.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.81, -12.91, 220, 2, 0)
end

