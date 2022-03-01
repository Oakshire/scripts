--[[
        Script Name     :       SpawnScripts/QueensColony/atriggerfish425788.lua
	Script Purpose	:	Waypoint Path for atriggerfish425788.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:28 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 42.07, -12, -84.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.39, -11.89, -74.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.68, -12.08, -78.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.23, -11.74, -66.43, 2, 0)
	MovementLoopAddLocation(NPC, 55.41, -11.99, -62.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.87, -12.08, -75.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 56.6, -11.99, -74.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.8, -11.97, -74.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.75, -12.17, -72.92, 2, 0)
	MovementLoopAddLocation(NPC, 44.12, -12.02, -75.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.04, -12.05, -62.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.48, -11.95, -72.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.95, -12.02, -79.94, 2, 0)
end


