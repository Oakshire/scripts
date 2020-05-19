--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425476.lua
	Script Purpose	:	Waypoint Path for ashoalglider425476.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 10:20:26 
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
	MovementLoopAddLocation(NPC, -45.27, -10.7, -28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.77, -10.79, -35.91, 2, 0)
	MovementLoopAddLocation(NPC, -19.21, -10.56, -50.54, 2, 0)
	MovementLoopAddLocation(NPC, -13.82, -10.64, -58.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -14.54, -11.17, -43.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -7.41, -10.96, -50.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.09, -11.06, -46.95, 2, 0)
	MovementLoopAddLocation(NPC, -31.05, -11.09, -32.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.54, -10.7, -54.69, 2, 0)
	MovementLoopAddLocation(NPC, -38.36, -10.7, -69.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -38.29, -10.7, -57.6, 2, 0)
	MovementLoopAddLocation(NPC, -37.57, -10.7, -17.85, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -45.08, -10.54, -47.72, 2, math.random(10, 20))
end


