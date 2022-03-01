--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770051.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770051.lua
	Script Author	:	Rylec
	Script Date	:	07-28-2020 10:33:33 
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
	MovementLoopAddLocation(NPC, -138.94, 4.46, -106.1, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -138.04, 4.37, -107.72, 2, 0)
	MovementLoopAddLocation(NPC, -128.54, 3.68, -117.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -136.58, 4.02, -109.39, 2, 0)
	MovementLoopAddLocation(NPC, -147.81, 3.91, -102.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -143.96, 3.87, -109.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -139.81, 3.72, -114.57, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -141.15, 4.36, -104.95, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -135.9, 4.58, -103.93, 2, 0)
	MovementLoopAddLocation(NPC, -130.7, 4.04, -107.04, 2, 0)
	MovementLoopAddLocation(NPC, -121.35, 3.66, -117.57, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -129.24, 3.68, -107.95, 2, 0)
	MovementLoopAddLocation(NPC, -132.01, 4.44, -106.52, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -134.86, 3.97, -109.59, 2, 0)
	MovementLoopAddLocation(NPC, -137.02, 3.71, -118.07, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -133.94, 3.74, -118.95, 2, 0)
	MovementLoopAddLocation(NPC, -124.29, 3.67, -117.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -124.62, 3.67, -111.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -134.15, 4.57, -104.69, 2, 0)
	MovementLoopAddLocation(NPC, -139.21, 4.59, -96.67, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -140.17, 4.6, -102.73, 2, 0)
end

