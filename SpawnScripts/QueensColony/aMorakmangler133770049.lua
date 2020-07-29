--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770049.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770049.lua
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
	MovementLoopAddLocation(NPC, -146.74, 3.86, -108.48, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -140.26, 4.39, -105.56, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -147.69, 3.93, -110.44, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -137.85, 4.12, -108.94, 2, 0)
	MovementLoopAddLocation(NPC, -133.06, 3.7, -111.22, 2, 0)
	MovementLoopAddLocation(NPC, -125.77, 3.67, -111.03, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -137.61, 3.72, -114.28, 2, 0)
	MovementLoopAddLocation(NPC, -140.41, 3.73, -113.15, 2, 0)
	MovementLoopAddLocation(NPC, -147.92, 3.92, -107.05, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -141.39, 3.73, -112.04, 2, 0)
	MovementLoopAddLocation(NPC, -136.04, 3.71, -117.9, 2, 0)
	MovementLoopAddLocation(NPC, -131.72, 3.7, -118.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -134.72, 3.71, -118.71, 2, 0)
	MovementLoopAddLocation(NPC, -137.28, 3.72, -117.69, 2, 0)
	MovementLoopAddLocation(NPC, -142.43, 3.73, -111.67, 2, 0)
end

