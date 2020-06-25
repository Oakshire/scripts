--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425478.lua
	Script Purpose	:	Waypoint Path for ashoalglider425478.lua
	Script Author	:	Rylec
	Script Date	:	01-21-2020 04:12:53 
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
	MovementLoopAddLocation(NPC, 61.28, -11.45, -64.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 68.4, -11.47, -56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 80.54, -11.65, -35.47, 2, 0)
	MovementLoopAddLocation(NPC, 89.76, -11.56, -25.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 87.63, -11.87, -26.06, 2, 0)
	MovementLoopAddLocation(NPC, 83.41, -12.21, -29.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 82.11, -12.14, -37.56, 2, 0)
	MovementLoopAddLocation(NPC, 79.67, -12.51, -42.72, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.57, -12.24, -45.3, 2, 0)
	MovementLoopAddLocation(NPC, 73.09, -11.69, -52.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.08, -11.58, -39.49, 2, 0)
	MovementLoopAddLocation(NPC, 79.99, -11.61, -36.3, 2, 0)
	MovementLoopAddLocation(NPC, 87.79, -11.5, -29.44, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.04, -11.76, -34.76, 2, 0)
	MovementLoopAddLocation(NPC, 85.32, -12.3, -43.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 79.45, -11.56, -44.88, 2, 0)
	MovementLoopAddLocation(NPC, 76.59, -10.98, -47.38, 2, 0)
end


