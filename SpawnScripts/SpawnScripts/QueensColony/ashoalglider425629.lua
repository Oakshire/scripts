--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425629.lua
	Script Purpose	:	Waypoint Path for ashoalglider425629.lua
	Script Author	:	Rylec
	Script Date	:	10-22-2019 09:52:18 
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
	MovementLoopAddLocation(NPC, 5.98, -12.57, 275.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.58, -12.37, 270.09, 2, 0)
	MovementLoopAddLocation(NPC, 5.58, -11.75, 267.8, 2, 0)
	MovementLoopAddLocation(NPC, 6.9, -11.3, 264.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.97, -11.32, 264.19, 2, 0)
	MovementLoopAddLocation(NPC, 30.1, -11.47, 265.79, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 11.91, -11.76, 267.15, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.54, -11.17, 268.17, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.1, -11.93, 279.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.29, -12.41, 271.96, 2, math.random(10, 20))
end


