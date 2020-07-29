--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770052.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770052.lua
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
	MovementLoopAddLocation(NPC, -146.45, 3.92, -117.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -147.76, 3.96, -113.22, 2, 0)
	MovementLoopAddLocation(NPC, -144.95, 3.77, -105.33, 2, 0)
	MovementLoopAddLocation(NPC, -136.74, 4.58, -96.27, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -135.5, 4.58, -102.71, 2, 0)
	MovementLoopAddLocation(NPC, -134.39, 4.58, -104.75, 2, 0)
	MovementLoopAddLocation(NPC, -134.34, 4.4, -107.61, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -134.41, 4.58, -105.6, 2, 0)
	MovementLoopAddLocation(NPC, -138.5, 4.59, -98.74, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -133.98, 4.57, -104.4, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -129.83, 3.73, -107.59, 2, 0)
	MovementLoopAddLocation(NPC, -124.58, 3.67, -117.37, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -134.03, 3.72, -118.82, 2, 0)
	MovementLoopAddLocation(NPC, -139.86, 3.73, -118.18, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -136.11, 3.71, -113.61, 2, 0)
	MovementLoopAddLocation(NPC, -133.34, 4.57, -106.73, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -134.48, 4.11, -108.95, 2, 0)
	MovementLoopAddLocation(NPC, -135.57, 3.71, -112.95, 2, 0)
	MovementLoopAddLocation(NPC, -145.67, 3.82, -118.47, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -141.8, 3.73, -115.78, 2, 0)
	MovementLoopAddLocation(NPC, -139.9, 4.33, -106.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -133.35, 3.7, -111.25, 2, 0)
	MovementLoopAddLocation(NPC, -125.36, 3.67, -111.27, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -128.35, 3.68, -109.11, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -121.17, 3.66, -116.2, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -127.28, 3.68, -117.93, 2, 0)
	MovementLoopAddLocation(NPC, -134.8, 3.8, -119.42, 2, 0)
end

