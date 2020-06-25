--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586596.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586596.lua
	Script Author	:	Rylec
	Script Date	:	10-06-2019 09:46:46 
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
	MovementLoopAddLocation(NPC, -147.67, -0.56, 188.26, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -147.96, -0.85, 167.19, 2, 0)
	MovementLoopAddLocation(NPC, -148.57, -0.56, 166.09, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -146.56, -0.79, 163.10, 2, 0)
	MovementLoopAddLocation(NPC, -139.79, -0.56, 163.61, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -146.53, -0.74, 163.01, 2, 0)
	MovementLoopAddLocation(NPC, -149.74, -0.56, 165.59, 2, 0)
	MovementLoopAddLocation(NPC, -153.01, -0.56, 166.04, 2, 0)
	MovementLoopAddLocation(NPC, -154.25, -0.56, 169.09, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -150.73, -0.76, 175.81, 2, 0)
	MovementLoopAddLocation(NPC, -148.31, -0.56, 176.30, 2, 0)
	MovementLoopAddLocation(NPC, -143.27, -0.70, 180.93, 2, 0)
	MovementLoopAddLocation(NPC, -140.56, -0.64, 181.01, 2, 0)
	MovementLoopAddLocation(NPC, -136.61, -0.86, 189.83, 2, 0)
	MovementLoopAddLocation(NPC, -134.18, -0.70, 190.80, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -133.01, -0.57, 186.43, 2, 0)
	MovementLoopAddLocation(NPC, -131.49, -0.57, 186.03, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -132.89, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -137.47, -0.56, 173.80, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -150.39, -0.82, 171.23, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -137.02, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -128.42, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -127.09, -0.56, 170.23, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -128.42, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
        MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -133.47, -0.81, 185.84, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -145.33, -0.56, 179.57, 2, math.random(12, 22))
end
