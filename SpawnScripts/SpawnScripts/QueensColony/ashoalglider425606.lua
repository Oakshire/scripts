--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425606.lua
	Script Purpose	:	Waypoint Path for ashoalglider425606.lua
	Script Author	:	Rylec
	Script Date	:	10-22-2019 09:51:51 
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
	MovementLoopAddLocation(NPC, 5.04, -11.5, 285.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.74, -11.5, 278.9, 2, 0)
	MovementLoopAddLocation(NPC, 30.58, -11.54, 272.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.93, -12.76, 280.21, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.01, -12.74, 272, 2, 0)
	MovementLoopAddLocation(NPC, 20.99, -11.82, 264.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.33, -11.66, 266.36, 2, 0)
	MovementLoopAddLocation(NPC, 11.52, -11.65, 274.04, 2, 0)
	MovementLoopAddLocation(NPC, 11.68, -11.93, 278.08, 2, 0)
	MovementLoopAddLocation(NPC, 7.8, -11.93, 284.11, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.09, -11.75, 272.04, 2, 0)
	MovementLoopAddLocation(NPC, 21.76, -12.06, 266.07, 2, 0)
	MovementLoopAddLocation(NPC, 23.99, -12.27, 259.23, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.57, -11.5, 263.1, 2, math.random(10, 20))
end

