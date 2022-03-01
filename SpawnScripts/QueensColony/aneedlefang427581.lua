--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427581.lua
	Script Purpose	:	Waypoint Path for aneedlefang427581.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:01 
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
	MovementLoopAddLocation(NPC, 27.76, -11.14, -88.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.69, -11.12, -90.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 49.72, -12.11, -80.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 39.48, -12.13, -84.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.12, -11.9, -82.36, 2, 0)
	MovementLoopAddLocation(NPC, 54.92, -11.68, -80.32, 2, 0)
	MovementLoopAddLocation(NPC, 68.48, -12.13, -72.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 63.62, -12.1, -74.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 61.36, -12.02, -57.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.33, -10.58, -67.52, 2, 0)
	MovementLoopAddLocation(NPC, 33.99, -11.25, -78.76, 2, 0)
	MovementLoopAddLocation(NPC, 29.88, -11.95, -82.72, 2, math.random(10, 20))
end


