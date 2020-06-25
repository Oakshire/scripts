--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427379.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427379.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:18:41 
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
	MovementLoopAddLocation(NPC, -7.38, -11.8, -63.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.64, -11.83, -68, 2, 0)
	MovementLoopAddLocation(NPC, 2.84, -11.79, -73.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.27, -11.87, -55.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -12.37, -11.57, -41.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -18.43, -11.61, -35.93, 2, 0)
	MovementLoopAddLocation(NPC, -37.19, -11.06, -20.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.53, -11.22, -20, 2, 0)
	MovementLoopAddLocation(NPC, -27.98, -11.4, -17.98, 2, 0)
	MovementLoopAddLocation(NPC, -22.09, -11.74, -10.71, 2, 0)
	MovementLoopAddLocation(NPC, -16.68, -11.91, -6.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.97, -12.27, 6.69, 2, 0)
	MovementLoopAddLocation(NPC, -19.52, -12.47, 15.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.41, -12.61, 10.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.27, -11.19, 0.13, 2, 0)
	MovementLoopAddLocation(NPC, -30.22, -10.56, -3.89, 2, 0)
	MovementLoopAddLocation(NPC, -35.88, -10.52, -22.46, 2, 0)
	MovementLoopAddLocation(NPC, -40.37, -10.59, -49.94, 2, 0)
	MovementLoopAddLocation(NPC, -44.91, -11.32, -56.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -46.17, -11.45, -58.59, 2, 0)
	MovementLoopAddLocation(NPC, -48.43, -11.83, -60.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -51.88, -11.4, -56.18, 2, 0)
	MovementLoopAddLocation(NPC, -62.38, -10.7, -48.64, 2, 0)
	MovementLoopAddLocation(NPC, -69.62, -10.7, -41.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -57.43, -10.58, -48.07, 2, 0)
	MovementLoopAddLocation(NPC, -37.41, -10.7, -54.78, 2, 0)
	MovementLoopAddLocation(NPC, -23.27, -10.7, -57.65, 2, 0)
	MovementLoopAddLocation(NPC, -13.45, -10.7, -60.46, 2, 0)
	MovementLoopAddLocation(NPC, 4.6, -11.94, -58.37, 2, math.random(10, 20))
end

