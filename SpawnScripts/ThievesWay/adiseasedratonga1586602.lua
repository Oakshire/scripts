--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586602.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586602.lua
	Script Author	:	Rylec
	Script Date	:	10-06-2019 09:47:03 
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
	MovementLoopAddLocation(NPC, -143.31, -0.56, 180.22, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -142.80, -0.56, 166.09, 2, 0)
	MovementLoopAddLocation(NPC, -141.17, -0.56, 165.99, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.31, -0.56, 166.09, 2, 0)
	MovementLoopAddLocation(NPC, -137.70, -0.61, 171.26, 2, 0)
	MovementLoopAddLocation(NPC, -132.91, -0.59, 176.30, 2, 0)
	MovementLoopAddLocation(NPC, -133.28, -0.81, 185.61, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -141.05, -0.56, 186.03, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -143.95, -0.56, 177.76, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -142.80, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -130.15, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -126.77, -0.56, 173.32, 2, 0)
	MovementLoopAddLocation(NPC, -128.42, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -141.58, -0.56, 174.22, 2, 0)
	MovementLoopAddLocation(NPC, -147.74, -0.56, 178.55, 2, math.random(12, 22))
end


