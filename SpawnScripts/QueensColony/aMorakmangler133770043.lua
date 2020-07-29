--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770043.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770043.lua
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
	MovementLoopAddLocation(NPC, -94.01, 4.36, -150.5, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -92.41, 4.37, -160.86, 2, 0)
	MovementLoopAddLocation(NPC, -84.67, 2.83, -172.13, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -87.37, 4.9, -162.6, 2, 0)
	MovementLoopAddLocation(NPC, -88.95, 4.5, -159.21, 2, 0)
	MovementLoopAddLocation(NPC, -88.27, 4.35, -154.03, 2, 0)
	MovementLoopAddLocation(NPC, -86.34, 4.35, -148.51, 2, 0)
	MovementLoopAddLocation(NPC, -88.86, 4.35, -144.43, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -92.2, 4.35, -148.23, 2, 0)
	MovementLoopAddLocation(NPC, -93.7, 4.37, -156.35, 2, 0)
	MovementLoopAddLocation(NPC, -95.99, 4.39, -160.12, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -94.42, 4.38, -157.24, 2, 0)
	MovementLoopAddLocation(NPC, -93.13, 4.35, -151.24, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -88.16, 4.36, -151.37, 2, 0)
	MovementLoopAddLocation(NPC, -82.47, 4.35, -145.8, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -90.24, 4.35, -145.67, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -92.32, 4.35, -148.02, 2, 0)
end

