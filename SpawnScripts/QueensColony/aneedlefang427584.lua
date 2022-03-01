--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427584.lua
	Script Purpose	:	Waypoint Path for aneedlefang427584.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:15:40 
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
	MovementLoopAddLocation(NPC, 70.8, -12.08, -62.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.53, -11.12, -55.73, 2, 0)
	MovementLoopAddLocation(NPC, 51.33, -11.19, -42.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.71, -10.98, -44.52, 2, 0)
	MovementLoopAddLocation(NPC, 69.92, -10.97, -43.86, 2, 0)
	MovementLoopAddLocation(NPC, 75.56, -11.03, -40.89, 2, 0)
	MovementLoopAddLocation(NPC, 97.48, -11.95, -23.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.67, -12.08, -44.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.58, -12.31, -37.24, 2, 0)
	MovementLoopAddLocation(NPC, 80, -12.51, -24.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.67, -12.52, -32.59, 2, 0)
	MovementLoopAddLocation(NPC, 76.08, -12.07, -43.39, 2, 0)
	MovementLoopAddLocation(NPC, 63.35, -11.99, -59.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.41, -12.1, -72.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.11, -11.65, -49.71, 2, 0)
	MovementLoopAddLocation(NPC, 77.3, -11.63, -43.31, 2, 0)
	MovementLoopAddLocation(NPC, 80.34, -11.65, -36.46, 2, 0)
	MovementLoopAddLocation(NPC, 92.57, -11.94, -21.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.17, -11.61, -20.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.27, -12.36, -23.32, 2, 0)
	MovementLoopAddLocation(NPC, 99.34, -12.99, -25.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.18, -12.11, -29.51, 2, 0)
	MovementLoopAddLocation(NPC, 84.18, -12.03, -34.32, 2, 0)
	MovementLoopAddLocation(NPC, 75.91, -12.01, -39.06, 2, math.random(10, 20))
end


