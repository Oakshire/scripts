--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang427612.lua
	Script Purpose	:	Waypoint Path for aneedlefang427612.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:41:20 
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
	MovementLoopAddLocation(NPC, 24.88, -14.9, -1.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.56, -13.83, 1.51, 2, 0)
	MovementLoopAddLocation(NPC, 35.33, -12.77, 9.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.33, -14.35, -9.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.58, -12.84, -18.14, 2, 0)
	MovementLoopAddLocation(NPC, 45.32, -12.42, -24.82, 2, 0)
	MovementLoopAddLocation(NPC, 47.23, -11.44, -33.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 36.63, -12.14, -11.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 48.41, -11.96, -11.42, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.75, -12.08, -10.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.53, -12.36, -8.64, 2, 0)
	MovementLoopAddLocation(NPC, 47.85, -13.26, -5.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.47, -13.87, -10.59, 2, 0)
	MovementLoopAddLocation(NPC, 28.21, -14.45, -13.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.25, -12.64, -25.82, 2, 0)
	MovementLoopAddLocation(NPC, 44.99, -11.87, -32.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.42, -12.01, -28.59, 2, 0)
	MovementLoopAddLocation(NPC, 42.29, -12.55, -23.48, 2, 0)
	MovementLoopAddLocation(NPC, 40.87, -12.89, -19.82, 2, 0)
end


