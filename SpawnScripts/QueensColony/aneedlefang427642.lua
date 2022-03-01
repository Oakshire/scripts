--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427642.lua
	Script Purpose	:	Waypoint Path for aneedlefang427642.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:51:36 
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
	MovementLoopAddLocation(NPC, 29.09, -11.85, 71.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.13, -11.52, 65.15, 2, 0)
	MovementLoopAddLocation(NPC, 23.06, -11.61, 58.37, 2, 0)
	MovementLoopAddLocation(NPC, 5.49, -13.25, 39.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.27, -13.92, 37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.43, -12.75, 39.94, 2, 0)
	MovementLoopAddLocation(NPC, 38.99, -12.54, 49.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.21, -12.2, 54.2, 2, 0)
	MovementLoopAddLocation(NPC, 19.37, -13.13, 58.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 18.4, -13.06, 45.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.66, -13.93, 33.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.63, -12.32, 44.64, 2, 0)
	MovementLoopAddLocation(NPC, 31.58, -11.82, 56.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.82, -12.16, 43.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.07, -11.85, 54.95, 2, 0)
end


