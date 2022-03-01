--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427961.lua
	Script Purpose	:	Waypoint Path for aneedlefang427961.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:17:17 
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
	MovementLoopAddLocation(NPC, -20.56, -11.73, -44.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.38, -11.49, -33.34, 2, 0)
	MovementLoopAddLocation(NPC, -25.17, -11.48, -19.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.55, -12.9, 0.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.5, -11.9, 2.87, 2, 0)
	MovementLoopAddLocation(NPC, -31.16, -11.9, 13.15, 2, 0)
	MovementLoopAddLocation(NPC, -41.75, -12.96, 22.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.79, -10.3, 9.72, 2, 0)
	MovementLoopAddLocation(NPC, -49.83, -10.3, 2.93, 2, 0)
	MovementLoopAddLocation(NPC, -54.85, -11.33, -10.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.86, -10.3, -11.4, 2, 0)
	MovementLoopAddLocation(NPC, -28.9, -10.3, -14.62, 2, 0)
	MovementLoopAddLocation(NPC, -9.04, -11.99, -21.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.17, -11.69, -27.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24, -11.36, -32.05, 2, 0)
	MovementLoopAddLocation(NPC, -30.35, -11.44, -37.59, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -30.4, -11.96, -21.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -28.62, -11.62, -28.39, 2, 0)
	MovementLoopAddLocation(NPC, -20.34, -10.42, -44.9, 2, 0)
	MovementLoopAddLocation(NPC, -15.51, -11.14, -57.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -11.97, -11.1, -60.08, 2, 0)
	MovementLoopAddLocation(NPC, -8.75, -11.04, -64.02, 2, 0)
	MovementLoopAddLocation(NPC, -3.02, -11.54, -67.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.16, -11.85, -56.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -3.97, -11.66, -37.21, 2, 0)
	MovementLoopAddLocation(NPC, -10.34, -12.72, -15.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.69, -11.24, -25.14, 2, 0)
end

