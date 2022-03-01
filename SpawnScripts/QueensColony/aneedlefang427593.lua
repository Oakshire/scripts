--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427593.lua
	Script Purpose	:	Waypoint Path for aneedlefang427593.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:18:32 
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
	MovementLoopAddLocation(NPC, 35.05, -11.13, -76.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.47, -11.1, -83.94, 2, 0)
	MovementLoopAddLocation(NPC, 27.81, -11.04, -88.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.46, -12.06, -86.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.98, -12.02, -81.27, 2, 0)
	MovementLoopAddLocation(NPC, 49.43, -12.06, -77.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.31, -11.1, -45.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.36, -12.75, -43.66, 2, 0)
	MovementLoopAddLocation(NPC, 78.21, -12.95, -41.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.82, -12.12, -51.51, 2, 0)
	MovementLoopAddLocation(NPC, 58.64, -12.05, -70.23, 2, math.random(10, 20))
end


