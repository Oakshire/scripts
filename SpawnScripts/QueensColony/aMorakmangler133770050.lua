--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770050.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770050.lua
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
	MovementLoopAddLocation(NPC, -118.64, 3.64, -115.35, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -131.11, 3.69, -111.92, 2, 0)
	MovementLoopAddLocation(NPC, -138.96, 4.19, -108.5, 2, 0)
	MovementLoopAddLocation(NPC, -145.71, 3.79, -106.3, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -148.89, 3.99, -108.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -145.81, 3.79, -105.33, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -136.5, 4.05, -109.27, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -140.47, 3.95, -109.32, 2, 0)
	MovementLoopAddLocation(NPC, -145.68, 3.79, -110.03, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -142.37, 3.73, -111.7, 2, 0)
	MovementLoopAddLocation(NPC, -137.33, 3.81, -119.65, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -131.78, 3.76, -118.85, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -142.24, 3.87, -120.39, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -141.61, 3.73, -113.83, 2, 0)
	MovementLoopAddLocation(NPC, -143.73, 3.89, -107.93, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -138.32, 4.11, -108.97, 2, 0)
end

