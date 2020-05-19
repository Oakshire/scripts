--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427531.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427531.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:20 
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
	MovementLoopAddLocation(NPC, -15.98, -11.33, -20.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.45, -11.27, -14.57, 2, 0)
	MovementLoopAddLocation(NPC, -19.95, -11.86, 9.3, 2, 0)
	MovementLoopAddLocation(NPC, -23.42, -12.86, 24.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.61, -10.7, 10.55, 2, 0)
	MovementLoopAddLocation(NPC, -46.24, -10.7, 5.73, 2, 0)
	MovementLoopAddLocation(NPC, -51.94, -10.7, 2.26, 2, 0)
	MovementLoopAddLocation(NPC, -63.92, -10.7, -0.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -52.46, -10.7, 0.02, 2, 0)
	MovementLoopAddLocation(NPC, -24.74, -10.7, -11.88, 2, 0)
	MovementLoopAddLocation(NPC, -4.38, -11.57, -17.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.41, -11.76, -28.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -8.3, -11.2, -30.77, 2, 0)
	MovementLoopAddLocation(NPC, -30.91, -10.7, -44.28, 2, 0)
	MovementLoopAddLocation(NPC, -41.23, -10.7, -51.25, 2, 0)
	MovementLoopAddLocation(NPC, -49.89, -10.7, -54.56, 2, 0)
	MovementLoopAddLocation(NPC, -58.18, -10.96, -53.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.96, -10.7, -53.66, 2, 0)
	MovementLoopAddLocation(NPC, -33.07, -10.7, -11.02, 2, 0)
	MovementLoopAddLocation(NPC, -27.52, -11.03, -3.88, 2, 0)
	MovementLoopAddLocation(NPC, -20.91, -11.77, -0.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.8, -11.26, -5.48, 2, 0)
	MovementLoopAddLocation(NPC, -23.93, -11.33, -15.68, 2, 0)
	MovementLoopAddLocation(NPC, -25.59, -11.62, -20.69, 2, 0)
	MovementLoopAddLocation(NPC, -26.79, -12.19, -27.12, 2, 0)
	MovementLoopAddLocation(NPC, -31.57, -12.62, -37.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.47, -11.37, -29.41, 2, 0)
end
