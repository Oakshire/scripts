--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586597.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586597.lua
	Script Author	:	Rylec
	Script Date	:	10-06-2019 09:46:50 
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
	MovementLoopAddLocation(NPC, -143.70, -0.56, 192.24, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -143.92, -0.56, 177.18, 2, 0)
	MovementLoopAddLocation(NPC, -136.88, -0.56, 172.45, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -128.42, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -127.79, -0.56, 178.52, 2, 0)
	MovementLoopAddLocation(NPC, -127.70, -0.56, 178.47, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -126.51, -0.56, 171.07, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -128.42, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -137.21, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -148.74, -0.73, 164.67, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -145.91, -1.94, 170.04, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 186.03, 2, 0)
	MovementLoopAddLocation(NPC, -128.99, -0.59, 185.98, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -132.70, -0.56, 186.17, 2, 0)
	MovementLoopAddLocation(NPC, -140.33, -0.56, 192.04, 2, 0)
end

