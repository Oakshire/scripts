--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish426056.lua
	Script Purpose	:	Waypoint Path for atriggerfish426056.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 05:59:11 
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
	MovementLoopAddLocation(NPC, -111.93, -12.48, 236, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -113.09, -13.47, 240.21, 2, 0)
	MovementLoopAddLocation(NPC, -117.24, -13.9, 240.49, 2, 0)
	MovementLoopAddLocation(NPC, -120.56, -14.49, 239.52, 2, 0)
	MovementLoopAddLocation(NPC, -124.5, -13.66, 227.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -106.77, -13.71, 197.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.58, -13.73, 218.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.54, -13.7, 212.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.19, -14.98, 237.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -120.76, -13.9, 240.22, 2, 0)
	MovementLoopAddLocation(NPC, -115.09, -13.38, 240.68, 2, 0)
	MovementLoopAddLocation(NPC, -107.8, -12.85, 239.19, 2, 0)
	MovementLoopAddLocation(NPC, -89.12, -14.88, 231.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.6, -12.48, 230.37, 2, 0)
	MovementLoopAddLocation(NPC, -113.43, -12.5, 230.47, 2, 0)
	MovementLoopAddLocation(NPC, -119.45, -12.41, 229.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.54, -12.6, 227.74, 2, 0)
	MovementLoopAddLocation(NPC, -99.27, -13.64, 233.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.79, -13.47, 230.97, 2, 0)
	MovementLoopAddLocation(NPC, -119.42, -12.37, 212.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.43, -13.54, 241.32, 2, 0)
	MovementLoopAddLocation(NPC, -114.47, -13.77, 244.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -114.18, -12.25, 237.87, 2, 0)
end


