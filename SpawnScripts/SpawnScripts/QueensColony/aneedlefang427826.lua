--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427826.lua
	Script Purpose	:	Waypoint Path for aneedlefang427826.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:16:11 
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
	MovementLoopAddLocation(NPC, -22.94, -12.77, -40.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.41, -11.73, -49.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.85, -11.87, -32.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.97, -12.04, -49.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.94, -12.6, -35.68, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.34, -11.02, -45.05, 2, 0)
	MovementLoopAddLocation(NPC, -10.43, -11.22, -55.09, 2, 0)
	MovementLoopAddLocation(NPC, -1.39, -12.22, -66.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.1, -12.2, -60.84, 2, 0)
	MovementLoopAddLocation(NPC, -0.76, -12.19, -38.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.77, -12.11, -40.61, 2, 0)
	MovementLoopAddLocation(NPC, -13.13, -11.76, -43.38, 2, 0)
	MovementLoopAddLocation(NPC, -17.01, -11.5, -46.45, 2, 0)
	MovementLoopAddLocation(NPC, -27.62, -11.06, -52.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.29, -12.06, -43.31, 2, 0)
	MovementLoopAddLocation(NPC, -23.02, -12.64, -33.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.5, -12.58, -34.86, 2, 0)
end

