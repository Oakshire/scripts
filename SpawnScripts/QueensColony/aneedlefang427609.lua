--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427609.lua
	Script Purpose	:	Waypoint Path for aneedlefang427609.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:40:30 
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
	MovementLoopAddLocation(NPC, -27.13, -11.97, -92.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -19.56, -11.33, -94.29, 2, 0)
	MovementLoopAddLocation(NPC, -5.27, -11.07, -93.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.36, -10.51, -88.78, 2, 0)
	MovementLoopAddLocation(NPC, 1.63, -10.57, -80.99, 2, 0)
	MovementLoopAddLocation(NPC, 10.9, -10.3, -65.85, 2, 0)
	MovementLoopAddLocation(NPC, 24.49, -10.4, -49.76, 2, 0)
	MovementLoopAddLocation(NPC, 38.4, -11.6, -31.9, 2, 0)
	MovementLoopAddLocation(NPC, 45.12, -12.34, -22.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.96, -13.07, -14.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.93, -12.75, -16.72, 2, 0)
	MovementLoopAddLocation(NPC, 30.55, -12.18, -25.49, 2, 0)
	MovementLoopAddLocation(NPC, 25.29, -12.09, -30.35, 2, 0)
	MovementLoopAddLocation(NPC, 18.85, -12.1, -32.83, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.6, -12.03, -34.37, 2, 0)
	MovementLoopAddLocation(NPC, 43.12, -11.88, -33.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.24, -12.97, -28.38, 2, 0)
	MovementLoopAddLocation(NPC, 26.43, -14.52, -20.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.08, -13.29, -17.94, 2, 0)
	MovementLoopAddLocation(NPC, 43.73, -13.03, -16.34, 2, 0)
	MovementLoopAddLocation(NPC, 48.3, -13.06, -15.73, 2, 0)
	MovementLoopAddLocation(NPC, 54.73, -13.07, -14.33, 2, 0)
	MovementLoopAddLocation(NPC, 62.2, -13.13, -14.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 60.03, -13.34, -9.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.96, -12.11, -17.72, 2, 0)
	MovementLoopAddLocation(NPC, 48.56, -12.04, -23.32, 2, 0)
	MovementLoopAddLocation(NPC, 42.94, -11.93, -30.24, 2, 0)
	MovementLoopAddLocation(NPC, 37.78, -11.94, -34.64, 2, 0)
	MovementLoopAddLocation(NPC, 32.6, -12.24, -36.54, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.19, -11.65, -39.97, 2, 0)
	MovementLoopAddLocation(NPC, 17.38, -11.3, -51.39, 2, 0)
	MovementLoopAddLocation(NPC, 1.23, -10.3, -66.13, 2, 0)
	MovementLoopAddLocation(NPC, -10.18, -10.3, -80.03, 2, 0)
	MovementLoopAddLocation(NPC, -18.05, -10.65, -87.79, 2, 0)
end

