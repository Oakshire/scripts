--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587715.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587715.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:09:50 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 252.56, -1.17, -63.31, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 260.21, -1.51, -73.81, 2, 0)
	MovementLoopAddLocation(NPC, 272.42, -1.55, -75.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 251.25, -0.16, -84.98, 2, 0)
	MovementLoopAddLocation(NPC, 238.61, -1.74, -98.43, 2, 0)
	MovementLoopAddLocation(NPC, 237.23, -1.39, -108.41, 2, 0)
	MovementLoopAddLocation(NPC, 241.94, -0.86, -127.51, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 242.68, -0.89, -133.2, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 236.99, -1.49, -107.08, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 241.58, -0.86, -137.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 232.69, -0.97, -115.3, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 232.82, -1.32, -106.88, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 235.41, -1.14, -111.13, 2, math.random(14, 25))
end


