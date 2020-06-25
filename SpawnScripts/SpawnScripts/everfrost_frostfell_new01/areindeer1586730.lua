--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/areindeer1586730.lua
	Script Purpose	:	Waypoint Path for areindeer1586730.lua
	Script Author	:	Rylec
	Script Date	:	12-01-2019 07:28:48 
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
	MovementLoopAddLocation(NPC, 243.63, -35.24, -1250.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 236.25, -35.38, -1253.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 240.77, -35.55, -1247.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 242.72, -34.91, -1256.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 240.81, -35.54, -1247.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 247.51, -35.23, -1247.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 242.51, -35.38, -1248.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 233.24, -35.76, -1247.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 244.72, -35.05, -1254.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 242.24, -35.39, -1248.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 239.33, -35.74, -1243.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 244.52, -35.45, -1245.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 240.99, -35.46, -1248.98, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 243.24, -35.55, -1243.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 242.84, -34.89, -1257.01, 2, math.random(10, 20))
end

