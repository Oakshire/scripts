--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425535.lua
	Script Purpose	:	Waypoint Path for ashoalglider425535.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:45:58 
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
	MovementLoopAddLocation(NPC, -106.85, -14.38, 223.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -80.78, -13.23, 223.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -94.05, -13.95, 234.19, 2, 0)
	MovementLoopAddLocation(NPC, -100.23, -12.21, 238.91, 2, 0)
	MovementLoopAddLocation(NPC, -109.58, -12.08, 247.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.39, -13.17, 210.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -95.54, -13.83, 219.19, 2, 0)
	MovementLoopAddLocation(NPC, -81.66, -12.22, 221.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -85.3, -12.94, 224.02, 2, 0)
	MovementLoopAddLocation(NPC, -92.13, -14.21, 233.09, 2, 0)
	MovementLoopAddLocation(NPC, -96.33, -12.92, 233.73, 2, 0)
	MovementLoopAddLocation(NPC, -107.11, -11.95, 246.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -115.59, -12.88, 242.51, 2, 0)
	MovementLoopAddLocation(NPC, -119.5, -13.66, 240.08, 2, 0)
	MovementLoopAddLocation(NPC, -129.68, -13.2, 221.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -130.12, -12.86, 230.06, 2, 0)
	MovementLoopAddLocation(NPC, -109.56, -11.79, 232, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -109.97, -14.45, 226.06, 2, 0)
end

