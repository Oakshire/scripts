--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425479.lua
	Script Purpose	:	Waypoint Path for ashoalglider425479.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:18 
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
	MovementLoopAddLocation(NPC, 39.95, -11.44, -76.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.86, -11.48, -67.91, 2, 0)
	MovementLoopAddLocation(NPC, 65.99, -11.45, -66.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.81, -11.5, -80.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.39, -11.26, -63.19, 2, 0)
	MovementLoopAddLocation(NPC, 54.92, -10.99, -60.18, 2, 0)
	MovementLoopAddLocation(NPC, 58.8, -10.7, -49.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.43, -10.7, -59.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.67, -11.48, -63.12, 2, 0)
	MovementLoopAddLocation(NPC, 56.29, -11.43, -68.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.24, -11.5, -74.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.86, -11.88, -75.75, 2, 0)
end


