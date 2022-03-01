--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429807.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429807.lua
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
	MovementLoopAddLocation(NPC, -94.63, 4.37, -153.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -92, 4.35, -151.14, 2, 0)
	MovementLoopAddLocation(NPC, -88.26, 4.36, -151.63, 2, 0)
	MovementLoopAddLocation(NPC, -84.22, 5.25, -159.29, 2, 0)
	MovementLoopAddLocation(NPC, -85.31, 4.62, -166.19, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -89.92, 4.41, -166.79, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -91.64, 4.37, -163.36, 2, 0)
	MovementLoopAddLocation(NPC, -91.48, 4.37, -159.56, 2, 0)
	MovementLoopAddLocation(NPC, -88.29, 4.35, -155.24, 2, 0)
	MovementLoopAddLocation(NPC, -87.47, 4.35, -151.7, 2, 0)
	MovementLoopAddLocation(NPC, -84.55, 4.35, -148.01, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -87.34, 4.35, -151.74, 2, 0)
	MovementLoopAddLocation(NPC, -87.7, 4.35, -154.88, 2, 0)
	MovementLoopAddLocation(NPC, -90.25, 4.36, -157.55, 2, 0)
	MovementLoopAddLocation(NPC, -96.39, 4.39, -160.61, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -94.35, 4.38, -157.55, 2, 0)
	MovementLoopAddLocation(NPC, -93.36, 4.35, -151.53, 2, 0)
	MovementLoopAddLocation(NPC, -91.89, 4.35, -147.01, 2, 0)
	MovementLoopAddLocation(NPC, -83.72, 4.34, -137.84, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -90.11, 4.35, -146.07, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -92.43, 4.35, -148.4, 2, 0)
	MovementLoopAddLocation(NPC, -93.62, 4.36, -154.74, 2, 0)
	MovementLoopAddLocation(NPC, -92.72, 4.37, -161.91, 2, 0)
	MovementLoopAddLocation(NPC, -89.11, 4.51, -163.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -83.65, 4.69, -165.9, 2, math.random(14, 25))
end

