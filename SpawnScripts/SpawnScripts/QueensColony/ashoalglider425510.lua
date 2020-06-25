--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425510.lua
	Script Purpose	:	Waypoint Path for ashoalglider425510.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:58:55 
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
	MovementLoopAddLocation(NPC, -140.8, -12.37, 0.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.84, -12.5, 13.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -140.91, -12.49, 25.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.48, -11.44, 53.92, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -127.05, -11.46, 57.86, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -136.49, -11.98, 40.24, 2, 0)
	MovementLoopAddLocation(NPC, -131.54, -11.54, 27.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.51, -11.43, 59.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.54, -11.33, 57.48, 2, 0)
	MovementLoopAddLocation(NPC, -126.05, -10.5, 52.87, 2, 0)
	MovementLoopAddLocation(NPC, -108.41, -10.5, 46.4, 2, 0)
	MovementLoopAddLocation(NPC, -102.61, -10.5, 41.9, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -105.98, -10.5, 43.85, 2, 0)
	MovementLoopAddLocation(NPC, -115.86, -10.5, 43.18, 2, 0)
	MovementLoopAddLocation(NPC, -124.42, -10.5, 33.93, 2, 0)
	MovementLoopAddLocation(NPC, -134.14, -11.92, 9.02, 2, 0)
end

