--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425501.lua
	Script Purpose	:	Waypoint Path for ashoalglider425501.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:29:08 
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
	MovementLoopAddLocation(NPC, -1.82, -11.6, -78.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.4, -11.84, -75.97, 2, 0)
	MovementLoopAddLocation(NPC, 2.81, -11.63, -69.51, 2, 0)
	MovementLoopAddLocation(NPC, 7.65, -12.02, -60.56, 2, 0)
	MovementLoopAddLocation(NPC, 13.03, -12.4, -53.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.38, -11.98, -50.21, 2, 0)
	MovementLoopAddLocation(NPC, 16.02, -11.48, -20.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.07, -11.59, -36.73, 2, 0)
	MovementLoopAddLocation(NPC, 6.2, -11.75, -53.5, 2, 0)
	MovementLoopAddLocation(NPC, 3.69, -11.61, -56.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 0.98, -12.51, -62.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.69, -12.81, -61.48, 2, 0)
	MovementLoopAddLocation(NPC, 19.05, -12.06, -54.43, 2, 0)
	MovementLoopAddLocation(NPC, 22.1, -11.61, -53.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.6, -11.88, -50.58, 2, 0)
	MovementLoopAddLocation(NPC, 19.48, -12, -42.36, 2, 0)
	MovementLoopAddLocation(NPC, 18.93, -11.73, -38.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 7.53, -11.88, -41.01, 2, 0)
	MovementLoopAddLocation(NPC, -5.32, -11.53, -39.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.9, -11.51, -34.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 1.85, -10.99, -54.48, 2, 0)
	MovementLoopAddLocation(NPC, -1.33, -10.94, -77.3, 2, 0)
	MovementLoopAddLocation(NPC, -5.46, -11.79, -87.56, 2, math.random(10, 20))
end

