--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427017.lua
	Script Purpose	:	Waypoint Path for areefturtle427017.lua
	Script Author	:	Rylec
	Script Date	:	11-03-2019 06:00:10 
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
	MovementLoopAddLocation(NPC, -84.03, -12.71, 187.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.78, -11.72, 170.4, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -73.82, -11.77, 191.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -89.32, -11.96, 197.12, 2, 0)
	MovementLoopAddLocation(NPC, -113.27, -12.29, 199.91, 2, 0)
	MovementLoopAddLocation(NPC, -124.61, -13.25, 209.75, 2, 0)
	MovementLoopAddLocation(NPC, -127.35, -13.47, 212.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.34, -13.47, 212.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -111.98, -14.72, 246.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -104.29, -13.41, 214.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -99.84, -13.35, 203.63, 2, 0)
	MovementLoopAddLocation(NPC, -95.79, -12.64, 199.82, 2, 0)
	MovementLoopAddLocation(NPC, -91.54, -12.38, 196.4, 2, 0)
	MovementLoopAddLocation(NPC, -86.72, -12.69, 190.72, 2, 0)
end

