--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427502.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427502.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:16:14 
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
	MovementLoopAddLocation(NPC, -45.29, -10.7, 6.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.68, -10.66, 15.74, 2, 0)
	MovementLoopAddLocation(NPC, -40.35, -12.12, 26.19, 2, 0)
	MovementLoopAddLocation(NPC, -40.33, -12.56, 32.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.79, -13.09, 27.96, 2, 0)
	MovementLoopAddLocation(NPC, -32.25, -13.63, 22.73, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.26, -12.16, 17.63, 2, 0)
	MovementLoopAddLocation(NPC, -31.85, -10.7, -3.57, 2, 0)
	MovementLoopAddLocation(NPC, -28.85, -10.7, -18.61, 2, 0)
	MovementLoopAddLocation(NPC, -26.33, -10.7, -29.79, 2, 0)
	MovementLoopAddLocation(NPC, -23, -11.42, -38.61, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -41.19, -10.7, -52.82, 2, 0)
	MovementLoopAddLocation(NPC, -46.5, -11.13, -56.83, 2, 0)
	MovementLoopAddLocation(NPC, -48.74, -11.4, -60.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -44.29, -11.82, -54.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.12, -11, -54.08, 2, 0)
	MovementLoopAddLocation(NPC, -56.19, -10.97, -53.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -53.54, -10.7, -49.85, 2, 0)
	MovementLoopAddLocation(NPC, -50.34, -10.7, -43.5, 2, 0)
	MovementLoopAddLocation(NPC, -45.91, -10.7, -0.62, 2, 0)
	MovementLoopAddLocation(NPC, -43.2, -11.16, 17, 2, 0)
	MovementLoopAddLocation(NPC, -38.34, -11.46, 23.92, 2, math.random(10, 20))
end


