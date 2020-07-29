--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429778.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429778.lua
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
	MovementLoopAddLocation(NPC, -88.21, 1.68, -194.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -91.73, 1.7, -208, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -60.14, 1.91, -189.17, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -84.56, 1.86, -198.84, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -67.39, 2.34, -190.29, 2, 0)
	MovementLoopAddLocation(NPC, -62.92, 2.27, -187.11, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -70.35, 2.36, -193.3, 2, 0)
	MovementLoopAddLocation(NPC, -82.3, 1.86, -196.78, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -79.04, 1.84, -185.97, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -69.46, 2.3, -185.76, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -71.68, 2.31, -190.95, 2, 0)
	MovementLoopAddLocation(NPC, -72.1, 2.37, -197.96, 2, 0)
	MovementLoopAddLocation(NPC, -71.77, 2.31, -203.4, 2, math.random(14, 25))
end

