--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425693.lua
	Script Purpose	:	Waypoint Path for ashoalglider425693.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 09:27:57 
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
	MovementLoopAddLocation(NPC, -54.33, -10.7, 19.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.47, -10.7, 13.36, 2, 0)
	MovementLoopAddLocation(NPC, -40.31, -10.7, -21.25, 2, 0)
	MovementLoopAddLocation(NPC, -33.26, -11.3, -37.93, 2, 0)
	MovementLoopAddLocation(NPC, -29.81, -11.19, -44.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.65, -11.1, -31.25, 2, 0)
	MovementLoopAddLocation(NPC, -10.54, -11.4, -25.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -13.48, -11.19, -33.82, 2, 0)
	MovementLoopAddLocation(NPC, -18.58, -11.89, -43.08, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -50.42, -10.7, -28.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -48.4, -10.7, -41.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -33.75, -11.35, -42.51, 2, 0)
	MovementLoopAddLocation(NPC, -17.75, -11.46, -47.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.71, -11.94, -33.23, 2, 0)
	MovementLoopAddLocation(NPC, -38.54, -10.95, -26.23, 2, 0)
	MovementLoopAddLocation(NPC, -41.58, -10.7, -23.52, 2, 0)
	MovementLoopAddLocation(NPC, -45.85, -10.7, -17.94, 2, 0)
	MovementLoopAddLocation(NPC, -54.96, -10.7, -8.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -61.35, -10.7, 18.78, 2, math.random(10, 20))
end


