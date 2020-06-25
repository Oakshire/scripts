--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang428013.lua
	Script Purpose	:	Waypoint Path for aneedlefang428013.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:14:46 
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
	MovementLoopAddLocation(NPC, -27.47, -12.11, -83.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.5, -12.1, -80.61, 2, 0)
	MovementLoopAddLocation(NPC, -40.53, -12.1, -70.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.07, -11.42, -55.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -43.34, -11.13, -52.72, 2, 0)
	MovementLoopAddLocation(NPC, -30.7, -11.48, -22.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -10.5, -11.8, -37.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.78, -11.04, -33.33, 2, 0)
	MovementLoopAddLocation(NPC, -26.64, -11.12, -22.44, 2, 0)
	MovementLoopAddLocation(NPC, -33.96, -11.02, -17.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -49.95, -11.07, -34.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.32, -10.3, -38.63, 2, 0)
	MovementLoopAddLocation(NPC, -46.34, -10.36, -51.92, 2, 0)
	MovementLoopAddLocation(NPC, -43.81, -11.85, -65.67, 2, math.random(10, 20))
end