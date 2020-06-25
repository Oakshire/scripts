--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427477.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427477.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:28:03 
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
	MovementLoopAddLocation(NPC, -37.78, -13.56, 23.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.67, -12.12, 20.71, 2, 0)
	MovementLoopAddLocation(NPC, -26.57, -11.5, 12.43, 2, 0)
	MovementLoopAddLocation(NPC, -22.43, -11.35, 2.77, 2, 0)
	MovementLoopAddLocation(NPC, -7.17, -11.34, -20.64, 2, 0)
	MovementLoopAddLocation(NPC, -3.37, -11.65, -28.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.43, -11.4, -43.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.34, -11.38, -35.27, 2, 0)
	MovementLoopAddLocation(NPC, -15.91, -11.47, -27.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.12, -10.7, -34.25, 2, 0)
	MovementLoopAddLocation(NPC, -40.71, -10.7, -57.17, 2, 0)
	MovementLoopAddLocation(NPC, -39.6, -10.7, -65.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.28, -10.5, -63.75, 2, 0)
	MovementLoopAddLocation(NPC, -19.96, -10.7, -62.21, 2, 0)
	MovementLoopAddLocation(NPC, -10.37, -10.7, -55.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.61, -11.18, -53.39, 2, 0)
	MovementLoopAddLocation(NPC, -17.23, -11.29, -49.02, 2, 0)
	MovementLoopAddLocation(NPC, -20.75, -11.33, -45.37, 2, 0)
	MovementLoopAddLocation(NPC, -25.58, -11.35, -42.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.36, -11.05, -30.06, 2, 0)
	MovementLoopAddLocation(NPC, -40.2, -10.7, -21.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.46, -10.7, -2.16, 2, 0)
	MovementLoopAddLocation(NPC, -40.47, -10.7, 8.35, 2, 0)
	MovementLoopAddLocation(NPC, -40.13, -12.86, 18.17, 2, 0)
end

