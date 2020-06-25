--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427549.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427549.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:37 
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
	MovementLoopAddLocation(NPC, -41.58, -10.98, -26.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.72, -12.11, -32.3, 2, 0)
	MovementLoopAddLocation(NPC, -26.78, -12.64, -36.98, 2, 0)
	MovementLoopAddLocation(NPC, -18.35, -12.26, -45.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.77, -11.11, -20.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.2, -11.14, -43.07, 2, 0)
	MovementLoopAddLocation(NPC, -40.9, -10.62, -55.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.74, -10.96, -46.5, 2, 0)
	MovementLoopAddLocation(NPC, -36.56, -11.39, -21.45, 2, 0)
	MovementLoopAddLocation(NPC, -34.32, -10.7, -2.82, 2, 0)
	MovementLoopAddLocation(NPC, -34.61, -10.7, 5.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.69, -10.8, 11.38, 2, 0)
	MovementLoopAddLocation(NPC, -30.14, -11.4, 19.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.15, -11.98, 9.87, 2, 0)
	MovementLoopAddLocation(NPC, -25.69, -11.3, 0, 2, 0)
	MovementLoopAddLocation(NPC, -24.88, -11.4, -4.75, 2, 0)
	MovementLoopAddLocation(NPC, -25.08, -11.77, -9.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.58, -12.27, -16.72, 2, 0)
	MovementLoopAddLocation(NPC, -12.43, -11.51, -18.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.09, -11.85, -25.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -40.04, -10.99, -25.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.78, -11.59, -38.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -37.77, -11.71, -33.41, 2, 0)
end


