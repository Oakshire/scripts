--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427599.lua
	Script Purpose	:	Waypoint Path for aneedlefang427599.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:27:11 
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
	MovementLoopAddLocation(NPC, -35.05, -12.15, -76.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.54, -10.59, -68.86, 2, 0)
	MovementLoopAddLocation(NPC, -52.17, -10.4, -58.69, 2, 0)
	MovementLoopAddLocation(NPC, -59.61, -10.47, -52.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.73, -11.01, -55.44, 2, 0)
	MovementLoopAddLocation(NPC, -43.83, -11.19, -61.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.27, -11.16, -56.29, 2, 0)
	MovementLoopAddLocation(NPC, -39.63, -11.32, -46.65, 2, 0)
	MovementLoopAddLocation(NPC, -32.82, -12.54, -37.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.97, -11.11, -51.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -53.84, -10.26, -47.02, 2, 0)
	MovementLoopAddLocation(NPC, -62.4, -11.1, -44.87, 2, 0)
	MovementLoopAddLocation(NPC, -68.67, -11.06, -42.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -68.83, -10.41, -25.06, 2, 0)
	MovementLoopAddLocation(NPC, -67.82, -10.54, -11.71, 2, 0)
	MovementLoopAddLocation(NPC, -62.72, -10.69, -4.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.37, -10.3, -15.1, 2, 0)
	MovementLoopAddLocation(NPC, -37.81, -10.34, -48.54, 2, 0)
	MovementLoopAddLocation(NPC, -31.64, -10.43, -54.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.78, -11.33, -58.38, 2, 0)
	MovementLoopAddLocation(NPC, -39.93, -11.49, -64.77, 2, 0)
	MovementLoopAddLocation(NPC, -38.64, -12.05, -72.15, 2, 0)
end

