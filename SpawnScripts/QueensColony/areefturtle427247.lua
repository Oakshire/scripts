--[[
        Script Name     :       SpawnScripts/QueensColony/areefturtle427247.lua
	Script Purpose	:	Waypoint Path for areefturtle427247.lua
	Script Author	:	Rylec
	Script Date	:	10-22-2019 09:52:15 
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
	MovementLoopAddLocation(NPC, 11.95, -11.97, 260.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.03, -12.95, 257.87, 2, 0)
	MovementLoopAddLocation(NPC, 21, -12.52, 255.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.7, -12.42, 268.16, 2, 0)
	MovementLoopAddLocation(NPC, 18.63, -12.14, 272.62, 2, 0)
	MovementLoopAddLocation(NPC, 8.91, -13.05, 276.28, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.68, -12.48, 271.2, 2, 0)
	MovementLoopAddLocation(NPC, 11.21, -12.59, 267.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.53, -13.29, 270.32, 2, 0)
	MovementLoopAddLocation(NPC, 21.9, -13.01, 272.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.94, -13.39, 267.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14.75, -13.32, 263.37, 2, 0)
end

