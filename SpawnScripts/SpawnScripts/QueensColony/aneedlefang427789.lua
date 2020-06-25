--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427789.lua
	Script Purpose	:	Waypoint Path for aneedlefang427789.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:15:29 
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
	MovementLoopAddLocation(NPC, -62.58, -11.09, -2.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -53.18, -10.31, -0.77, 2, 0)
	MovementLoopAddLocation(NPC, -36.08, -10.41, 3.59, 2, 0)
	MovementLoopAddLocation(NPC, -26.33, -11.75, 6.08, 2, 0)
	MovementLoopAddLocation(NPC, -16.21, -12.39, 5.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.44, -12.24, -6.62, 2, 0)
	MovementLoopAddLocation(NPC, -15.35, -12.13, -13.32, 2, 0)
	MovementLoopAddLocation(NPC, -15.27, -12.08, -21.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -20.11, -11.57, -15.07, 2, 0)
	MovementLoopAddLocation(NPC, -25.01, -11.78, -2.95, 2, 0)
	MovementLoopAddLocation(NPC, -28.45, -12.04, 1.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.98, -11.28, -3.82, 2, 0)
	MovementLoopAddLocation(NPC, -22.3, -11.2, -10.28, 2, 0)
	MovementLoopAddLocation(NPC, -17.52, -11.27, -17.54, 2, 0)
	MovementLoopAddLocation(NPC, -14.79, -11.61, -27.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.67, -11.94, -19.83, 2, 0)
	MovementLoopAddLocation(NPC, -17.88, -12.08, -8.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -22.78, -11.79, -29.29, 2, 0)
	MovementLoopAddLocation(NPC, -23.38, -11.78, -44.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -24.56, -11.97, -39, 2, 0)
	MovementLoopAddLocation(NPC, -20.35, -12.07, -18.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -23.99, -11.21, -8.51, 2, 0)
	MovementLoopAddLocation(NPC, -28.19, -11.84, 1.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.58, -11.74, 20.41, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27, -10.21, 1.33, 2, 0)
	MovementLoopAddLocation(NPC, -28.69, -10.22, -9.75, 2, 0)
	MovementLoopAddLocation(NPC, -32.95, -10.61, -18.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -47.05, -10.48, -11.87, 2, 0)
end
