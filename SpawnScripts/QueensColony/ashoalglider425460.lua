--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425460.lua
	Script Purpose	:	Waypoint Path for ashoalglider425460.lua
	Script Author	:	Rylec
	Script Date	:	11-14-2019 08:59:58 
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
	MovementLoopAddLocation(NPC, -99.06, -10.5, 17.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -107.44, -10.5, 16.5, 2, 0)
	MovementLoopAddLocation(NPC, -116.44, -10.5, 17.3, 2, 0)
	MovementLoopAddLocation(NPC, -121.98, -10.5, 20.43, 2, 0)
	MovementLoopAddLocation(NPC, -127.98, -10.5, 35.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -142.33, -12.48, 43.78, 2, 0)
	MovementLoopAddLocation(NPC, -149.18, -12.75, 46.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -135.63, -12.76, 56.67, 2, 0)
	MovementLoopAddLocation(NPC, -131.55, -12.48, 72.27, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.63, -12.49, 56.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -134.74, -11.48, 25.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -128.94, -10.5, 21.76, 2, 0)
	MovementLoopAddLocation(NPC, -118.72, -10.5, 17.23, 2, 0)
	MovementLoopAddLocation(NPC, -115.29, -10.5, 17.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -101.3, -10.5, 15.74, 2, 0)
end

