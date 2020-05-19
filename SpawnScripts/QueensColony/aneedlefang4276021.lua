--[[
        Script Name     :       SpawnScripts/QueensColony/aneedlefang4276021.lua
	Script Purpose	:	Waypoint Path for aneedlefang4276021.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:34:14 
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
	MovementLoopAddLocation(NPC, 31.61, -13.34, 2.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.21, -14.56, -24.07, 2, 0)
	MovementLoopAddLocation(NPC, 25.27, -14.9, -28.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 23.22, -11.37, -38.91, 2, 0)
	MovementLoopAddLocation(NPC, 16.65, -11.56, -47.47, 2, 0)
	MovementLoopAddLocation(NPC, 10.07, -12.09, -62.64, 2, 0)
	MovementLoopAddLocation(NPC, 9.85, -12.06, -65.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.19, -12.67, -59.37, 2, 0)
	MovementLoopAddLocation(NPC, 1.03, -12.84, -55.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.3, -11.96, -52.8, 2, 0)
	MovementLoopAddLocation(NPC, 15.72, -12.08, -43.37, 2, 0)
	MovementLoopAddLocation(NPC, 22.06, -13.05, -37.2, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 40.57, -13.02, -28.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 43.53, -12.83, -22.87, 2, 0)
	MovementLoopAddLocation(NPC, 46.24, -12.99, -11.5, 2, 0)
	MovementLoopAddLocation(NPC, 46.73, -14.02, -3.95, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.24, -13.1, -29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 31.57, -14.37, -20.94, 2, math.random(10, 20))
end


