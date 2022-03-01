--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425508.lua
	Script Purpose	:	Waypoint Path for ashoalglider425508.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:36:18 
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
	MovementLoopAddLocation(NPC, 64.78, -14.43, -12.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.61, -13.32, -13.6, 2, 0)
	MovementLoopAddLocation(NPC, 47.95, -13.16, -15.22, 2, 0)
	MovementLoopAddLocation(NPC, 35.66, -13.48, -18.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.24, -12.02, -9.29, 2, 0)
	MovementLoopAddLocation(NPC, 44.58, -11.55, -2.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.99, -12.29, -4, 2, 0)
	MovementLoopAddLocation(NPC, 34.96, -13.64, -7.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 44.2, -11.75, -9.02, 2, 0)
	MovementLoopAddLocation(NPC, 48.59, -11.38, -12.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.95, -12.33, -15.55, 2, 0)
	MovementLoopAddLocation(NPC, 25.04, -13.49, -26.47, 2, 0)
	MovementLoopAddLocation(NPC, 20.5, -13.36, -34.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.54, -13.25, -10.39, 2, 0)
	MovementLoopAddLocation(NPC, 18.49, -12.34, 1.45, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.52, -12.93, -2.67, 2, 0)
	MovementLoopAddLocation(NPC, 40.06, -13.29, -4.08, 2, 0)
	MovementLoopAddLocation(NPC, 58.08, -13.93, -9.84, 2, 0)
	MovementLoopAddLocation(NPC, 61.11, -14.31, -11.08, 2, 0)
end


