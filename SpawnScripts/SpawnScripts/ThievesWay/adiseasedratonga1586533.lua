--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586533.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586533.lua
	Script Author	:	Rylec
	Script Date	:	10-06-2019 09:46:08 
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
	MovementLoopAddLocation(NPC, -126.41, -0.46, 162.08, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -127.96, -0.56, 170.93, 2, 0)
	MovementLoopAddLocation(NPC, -133.10, -0.56, 170.93, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -144.55, -0.56, 177.44, 2, 0)
	MovementLoopAddLocation(NPC, -148.39, -0.56, 187.84, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -142.85, -0.56, 176.42, 2, 0)	
	MovementLoopAddLocation(NPC, -139.38, -0.56, 173.26, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -133.10, -0.56, 170.93, 2, 0)
	MovementLoopAddLocation(NPC, -127.99, -0.56, 170.77, 2, 0)
	MovementLoopAddLocation(NPC, -128.14, -0.56, 168.18, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -125.45, -0.56, 171.55, 2, 0)
	MovementLoopAddLocation(NPC, -128.10, -0.56, 170.93, 2, 0)
	MovementLoopAddLocation(NPC, -133.10, -0.56, 170.93, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -141.17, -0.56, 173.69, 2, 0)
	MovementLoopAddLocation(NPC, -141.14, -0.56, 173.69, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.80, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -132.77, -0.57, 175.97, 2, 0)
	MovementLoopAddLocation(NPC, -128.05, -0.56, 176.10, 2, 0)
	MovementLoopAddLocation(NPC, -132.77, -0.57, 175.97, 2, 0)
	MovementLoopAddLocation(NPC, -134.80, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -141.04, -0.56, 175.46, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -133.10, -0.56, 170.93, 2, 0)
	MovementLoopAddLocation(NPC, -127.94, -0.56, 170.93, 2, 0)
end

