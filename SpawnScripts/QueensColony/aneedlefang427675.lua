--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427675.lua
	Script Purpose	:	Waypoint Path for aneedlefang427675.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:53:53 
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
	MovementLoopAddLocation(NPC, -12.9, -13.02, -18.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.01, -12.06, -17.32, 2, 0)
	MovementLoopAddLocation(NPC, -27.91, -11.15, -5.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.61, -11.35, -1.42, 2, 0)
	MovementLoopAddLocation(NPC, -13.18, -11.99, 8.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.98, -11.79, -2.28, 2, 0)
	MovementLoopAddLocation(NPC, -22.94, -12.1, -26.71, 2, 0)
	MovementLoopAddLocation(NPC, -35.67, -11.95, -43.13, 2, 0)
	MovementLoopAddLocation(NPC, -37.48, -11.86, -46.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.64, -10.58, -46.22, 2, 0)
	MovementLoopAddLocation(NPC, -63.77, -10.3, -44.78, 2, 0)
	MovementLoopAddLocation(NPC, -69.41, -11.17, -47.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -67.36, -10.63, -34.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -65.83, -10, -29.92, 2, 0)
	MovementLoopAddLocation(NPC, -60.77, -10, -17.45, 2, 0)
	MovementLoopAddLocation(NPC, -54.84, -10.5, -7.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -42.44, -10.3, -17.7, 2, 0)
	MovementLoopAddLocation(NPC, -26.82, -11.26, -18.77, 2, 0)
end

