--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga393410.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga393410.lua
	Script Author	:	Rylec
	Script Date	:	10-06-2019 09:45:59 
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
	MovementLoopAddLocation(NPC, -156.76, -0.51, 174.24, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -152.91, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -148.43, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -146.65, -0.56, 177.49, 2, 0)
	MovementLoopAddLocation(NPC, -144.59, -0.56, 177.49, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -137.06, -0.56, 172.68, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -128.42, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -128.42, -0.56, 166.09, 2, 0)
	MovementLoopAddLocation(NPC, -132.03, -0.56, 165.16, 2, 0)
	MovementLoopAddLocation(NPC, -139.29, -0.55, 162.54, 2, 0)
	MovementLoopAddLocation(NPC, -141.25, -0.56, 164.13, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -148.43, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -152.91, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -153.90, -0.56, 166.48, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -152.91, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -148.92, -0.83, 171.28, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -133.39, -0.94, 181.26, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 166.09, 2, 0)
	MovementLoopAddLocation(NPC, -139.67, -0.56, 165.52, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.31, -0.56, 166.09, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -141.09, -0.56, 173.35, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -148.43, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -152.91, -0.56, 170.97, 2, 0)
end

