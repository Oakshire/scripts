--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770047.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770047.lua
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
	MovementLoopAddLocation(NPC, -105.71, 4.49, -130.07, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -109.13, 4.49, -136.61, 2, 0)
	MovementLoopAddLocation(NPC, -110.7, 4.5, -144.86, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -109.75, 4.49, -138.8, 2, 0)
	MovementLoopAddLocation(NPC, -107.43, 4.54, -130.25, 2, 0)
	MovementLoopAddLocation(NPC, -107.53, 4.5, -125.21, 2, 0)
	MovementLoopAddLocation(NPC, -101.78, 4.46, -119.36, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -100.27, 4.45, -122.63, 2, 0)
	MovementLoopAddLocation(NPC, -100.72, 4.46, -126.37, 2, 0)
	MovementLoopAddLocation(NPC, -102.17, 4.29, -129.9, 2, 0)
	MovementLoopAddLocation(NPC, -104.89, 4.33, -133.61, 2, 0)
	MovementLoopAddLocation(NPC, -109.53, 4.49, -146.72, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -110.27, 4.62, -128.57, 2, 0)
	MovementLoopAddLocation(NPC, -106.8, 4.48, -113.11, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -108.04, 4.49, -124.38, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -115.21, 4.51, -123.21, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -110.88, 4.59, -128.1, 2, 0)
	MovementLoopAddLocation(NPC, -107.61, 4.48, -132.43, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -104.54, 4.47, -129.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -108.98, 4.49, -136.04, 2, 0)
	MovementLoopAddLocation(NPC, -110.93, 4.5, -144.73, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -109.03, 4.49, -135.07, 2, 0)
end

