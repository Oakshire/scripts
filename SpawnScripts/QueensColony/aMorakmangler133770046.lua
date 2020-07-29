--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770046.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770046.lua
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
	MovementLoopAddLocation(NPC, -111.65, 4.4, -153.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -111.87, 4.5, -148.03, 2, 0)
	MovementLoopAddLocation(NPC, -110.01, 4.49, -134.95, 2, 0)
	MovementLoopAddLocation(NPC, -110.89, 4.59, -126.32, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -109.75, 4.52, -131.92, 2, 0)
	MovementLoopAddLocation(NPC, -110.63, 4.5, -142.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -109.59, 4.49, -137.64, 2, 0)
	MovementLoopAddLocation(NPC, -103.75, 4.41, -130.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -105.75, 4.28, -138.2, 2, 0)
	MovementLoopAddLocation(NPC, -111.53, 4.5, -147.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -109.92, 4.5, -133.48, 2, 0)
	MovementLoopAddLocation(NPC, -111.04, 4.53, -124.65, 2, 0)
	MovementLoopAddLocation(NPC, -110.42, 4.21, -115.16, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -109.83, 4.49, -137.87, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -112.82, 4.5, -151.32, 2, math.random(14, 25))
end

