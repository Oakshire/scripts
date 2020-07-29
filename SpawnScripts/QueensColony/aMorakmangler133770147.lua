--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770147.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770147.lua
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
	MovementLoopAddLocation(NPC, -27.93, 2.13, -150.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -39.32, 1.98, -133.42, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -34.13, 2.4, -143.62, 2, 0)
	MovementLoopAddLocation(NPC, -33.98, 2.24, -154.34, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -22.06, 2.15, -145.51, 2, 0)
	MovementLoopAddLocation(NPC, -16.79, 2.09, -132.47, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -26.24, 2.11, -149.83, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -33.6, 2.2, -140.49, 2, 0)
	MovementLoopAddLocation(NPC, -37.06, 1.99, -135.04, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -38.13, 2.17, -141.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -31.33, 2.15, -137.35, 2, 0)
	MovementLoopAddLocation(NPC, -27.14, 2.13, -132.86, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -20.28, 2.11, -131.89, 2, 0)
	MovementLoopAddLocation(NPC, -10.67, 2.07, -132.54, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -22.33, 2.11, -131.97, 2, 0)
	MovementLoopAddLocation(NPC, -43.83, 1.99, -135.97, 2, 0)
	MovementLoopAddLocation(NPC, -47.33, 2.04, -137.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -35.07, 2.26, -142.61, 2, 0)
end

