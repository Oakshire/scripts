--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427564.lua
	Script Purpose	:	Waypoint Path for aneedlefang427564.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:52 
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
	MovementLoopAddLocation(NPC, -5.91, -11.77, -57.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.47, -11.48, -55.92, 2, 0)
	MovementLoopAddLocation(NPC, -20.69, -10.98, -52.03, 2, 0)
	MovementLoopAddLocation(NPC, -32.64, -11.02, -36.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -55.93, -10.46, -29.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -39.25, -11.64, -33.56, 2, 0)
	MovementLoopAddLocation(NPC, -27.08, -13.02, -30.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.86, -10.3, -17.94, 2, 0)
	MovementLoopAddLocation(NPC, -55.33, -10.36, -14.3, 2, 0)
	MovementLoopAddLocation(NPC, -68.19, -10.58, -9.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -58.97, -10.3, -19.29, 2, 0)
	MovementLoopAddLocation(NPC, -55.2, -10.3, -33.53, 2, 0)
	MovementLoopAddLocation(NPC, -51.16, -10.3, -42.29, 2, 0)
	MovementLoopAddLocation(NPC, -49.76, -10.36, -49.98, 2, 0)
	MovementLoopAddLocation(NPC, -43.43, -11.61, -62.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.55, -10.95, -56.74, 2, 0)
	MovementLoopAddLocation(NPC, -24.82, -11.28, -46.59, 2, 0)
	MovementLoopAddLocation(NPC, -15.78, -11.95, -40.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.37, -11.09, -47.5, 2, 0)
	MovementLoopAddLocation(NPC, -25.86, -10.3, -52.02, 2, 0)
	MovementLoopAddLocation(NPC, -31.63, -10.3, -60.96, 2, 0)
	MovementLoopAddLocation(NPC, -43.72, -10.33, -71.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -36.59, -10.38, -58, 2, 0)
	MovementLoopAddLocation(NPC, -26.73, -10.63, -46.88, 2, 0)
	MovementLoopAddLocation(NPC, -17.3, -11.19, -44.88, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.74, -11.1, -52.76, 2, 0)
	MovementLoopAddLocation(NPC, 2.82, -11.88, -61.5, 2, math.random(10, 20))
end

