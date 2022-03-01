--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770045.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770045.lua
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
	MovementLoopAddLocation(NPC, -107.75, 4.48, -119.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -107.61, 4.52, -125.83, 2, 0)
	MovementLoopAddLocation(NPC, -106.77, 4.53, -128.89, 2, 0)
	MovementLoopAddLocation(NPC, -107.88, 4.48, -134.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -109.71, 4.49, -137.82, 2, 0)
	MovementLoopAddLocation(NPC, -114.73, 4.32, -160.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -107.03, 4.54, -129.43, 2, 0)
	MovementLoopAddLocation(NPC, -108.74, 4.49, -123.12, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -105.98, 4.5, -129.79, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -105.65, 4.37, -135.47, 2, 0)
	MovementLoopAddLocation(NPC, -109.56, 4.49, -151.21, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -112.9, 4.51, -151.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -107.16, 4.55, -129.36, 2, 0)
	MovementLoopAddLocation(NPC, -107.64, 4.55, -126.92, 2, math.random(14, 25))
end

