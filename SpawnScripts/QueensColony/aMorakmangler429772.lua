--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429772.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429772.lua
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
	MovementLoopAddLocation(NPC, -78.88, 1.75, -179.43, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -69.5, 1.98, -204.47, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -77.43, 2.33, -206.56, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -74.76, 2.24, -191.53, 2, 0)
	MovementLoopAddLocation(NPC, -75.1, 2.12, -179.75, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -72.95, 2.31, -203.35, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -69.28, 2.45, -195.99, 2, 0)
	MovementLoopAddLocation(NPC, -54.87, 2.24, -178.65, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -61.2, 2.19, -185.82, 2, 0)
	MovementLoopAddLocation(NPC, -76.41, 2, -188.1, 2, 0)
	MovementLoopAddLocation(NPC, -88.18, 1.68, -194.59, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -81.57, 1.89, -197.93, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -69.4, 2.41, -196.72, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -66.98, 2.32, -189.3, 2, 0)
	MovementLoopAddLocation(NPC, -66.5, 2.29, -183.35, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -69.65, 2.1, -181.49, 2, 0)
end

