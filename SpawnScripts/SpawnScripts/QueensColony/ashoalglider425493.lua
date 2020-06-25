--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425493.lua
	Script Purpose	:	Waypoint Path for ashoalglider425493.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:46:32 
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
	MovementLoopAddLocation(NPC, -115.23, -12.38, 200.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -116.98, -14.52, 204.08, 2, 0)
	MovementLoopAddLocation(NPC, -125.34, -15.14, 204.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.18, -13.12, 205.85, 2, 0)
	MovementLoopAddLocation(NPC, -106.6, -13.12, 208.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.91, -13.17, 197.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.08, -13.16, 227.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -123.66, -11.8, 222.48, 2, 0)
	MovementLoopAddLocation(NPC, -127.21, -11.81, 220.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.02, -12.34, 229.31, 2, 0)
	MovementLoopAddLocation(NPC, -131.33, -13.88, 233.4, 2, 0)
	MovementLoopAddLocation(NPC, -133.21, -14.45, 232.12, 2, 0)
	MovementLoopAddLocation(NPC, -132.12, -14.48, 229.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -117.84, -11.64, 219.85, 2, 0)
	MovementLoopAddLocation(NPC, -109.34, -11.74, 214.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.55, -11.89, 208.88, 2, 0)
end

