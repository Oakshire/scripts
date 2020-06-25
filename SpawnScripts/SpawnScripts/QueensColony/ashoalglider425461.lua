--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425461.lua
	Script Purpose	:	Waypoint Path for ashoalglider425461.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 09:00:09 
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
	MovementLoopAddLocation(NPC, -147.06, -13.43, 37.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.79, -12.46, 3.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.41, -12.42, 60, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -139.2, -12.48, 59.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -137.01, -12.49, 56.41, 2, 0)
	MovementLoopAddLocation(NPC, -132.38, -11.73, 54.62, 2, 0)
	MovementLoopAddLocation(NPC, -127.01, -11.57, 53.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.89, -11.58, 53.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -112.21, -10.5, 47.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -115.02, -10.5, 46.7, 2, 0)
	MovementLoopAddLocation(NPC, -121.26, -10.5, 38.26, 2, 0)
	MovementLoopAddLocation(NPC, -125.27, -10.5, 26.81, 2, 0)
	MovementLoopAddLocation(NPC, -132.75, -11.96, 10.34, 2, 0)
	MovementLoopAddLocation(NPC, -136.14, -12.43, 4.94, 2, math.random(10, 20))
end


