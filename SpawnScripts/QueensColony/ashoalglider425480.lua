--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425480.lua
	Script Purpose	:	Waypoint Path for ashoalglider425480.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:13:35 
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
	MovementLoopAddLocation(NPC, 85.28, -11.47, -27.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.76, -11.45, -27.43, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78, -11.5, -35.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.88, -11.64, -40.3, 2, 0)
	MovementLoopAddLocation(NPC, 70.94, -11.46, -47.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.83, -11.1, -42.17, 2, 0)
	MovementLoopAddLocation(NPC, 78.33, -11.13, -35.19, 2, 0)
	MovementLoopAddLocation(NPC, 80.52, -11.44, -31.78, 2, 0)
	MovementLoopAddLocation(NPC, 92.51, -12.37, -19.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.27, -12.29, -40.75, 2, 0)
	MovementLoopAddLocation(NPC, 77.19, -12.13, -43.09, 2, 0)
	MovementLoopAddLocation(NPC, 75.43, -11.73, -46.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 70.79, -11.52, -51.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.21, -11.46, -45.91, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.35, -11.79, -42.75, 2, 0)
	MovementLoopAddLocation(NPC, 80.42, -11.97, -32.6, 2, 0)
end


