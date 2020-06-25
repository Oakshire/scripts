--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427619.lua
	Script Purpose	:	Waypoint Path for aneedlefang427619.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 10:24:41 
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
	MovementLoopAddLocation(NPC, 20.03, -12.5, 21.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.62, -12.77, 29.54, 2, 0)
	MovementLoopAddLocation(NPC, 5.64, -12.48, 41.01, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 15.29, -12.36, 32.76, 2, 0)
	MovementLoopAddLocation(NPC, 48.72, -11.69, 13, 2, 0)
	MovementLoopAddLocation(NPC, 59.44, -12.51, 5.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.31, -11.98, 1.58, 2, 0)
	MovementLoopAddLocation(NPC, 76.41, -12.01, -0.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.14, -11.96, -4, 2, 0)
	MovementLoopAddLocation(NPC, 93.27, -12.68, -13.13, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.11, -12.62, 3.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.8, -12.56, 6.65, 2, 0)
	MovementLoopAddLocation(NPC, 90.21, -12.71, 18.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.6, -12.72, 24.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.25, -12.84, 26.84, 2, 0)
	MovementLoopAddLocation(NPC, 75.8, -12.8, 32.1, 2, 0)
	MovementLoopAddLocation(NPC, 72.96, -12.98, 37.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.64, -11.93, 36.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.7, -10.49, 43.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.51, -10.3, 37.53, 2, 0)
	MovementLoopAddLocation(NPC, 47.19, -10.3, 32.18, 2, 0)
end


