--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427587.lua
	Script Purpose	:	Waypoint Path for aneedlefang427587.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:16:44 
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
	MovementLoopAddLocation(NPC, 48.9, -12.14, -78.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.65, -12.17, -74.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 72.51, -11.78, -52.63, 2, 0)
	MovementLoopAddLocation(NPC, 82.87, -12.6, -39.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.12, -10.41, -49.83, 2, 0)
	MovementLoopAddLocation(NPC, 74.59, -10.34, -57.83, 2, 0)
	MovementLoopAddLocation(NPC, 73.71, -10.71, -65.26, 2, 0)
	MovementLoopAddLocation(NPC, 71.34, -12.02, -72.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.78, -12.14, -69.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 51.26, -12.16, -65.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 55.41, -12.13, -64.72, 2, math.random(10, 20))
end


