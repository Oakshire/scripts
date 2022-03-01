--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586587.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586587.lua
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
	MovementLoopAddLocation(NPC, -132.78, -0.65, 180.84, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -128.42, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -125.92, -0.56, 175.36, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -128.42, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -136.95, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 180.97, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -142.80, -0.56, 166.88, 2, 0)
	MovementLoopAddLocation(NPC, -145.32, -0.53, 162.42, 2, 0)
	MovementLoopAddLocation(NPC, -147.24, -0.32, 161.40, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -145.87, -1.94, 167.76, 2, 0)
	MovementLoopAddLocation(NPC, -143.37, -0.74, 180.55, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -146.68, -0.56, 177.33, 2, 0)
	MovementLoopAddLocation(NPC, -148.04, -1.12, 171.50, 2, 0)
	MovementLoopAddLocation(NPC, -147.89, -0.87, 166.42, 2, 0)
	MovementLoopAddLocation(NPC, -148.59, -0.68, 165.33, 2, 0)
	MovementLoopAddLocation(NPC, -148.56, -0.68, 165.37, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -148.12, -0.74, 165.97, 2, 0)
	MovementLoopAddLocation(NPC, -147.98, -1.68, 172.58, 2, 0)
	MovementLoopAddLocation(NPC, -147.15, -1.81, 174.59, 2, 0)
	MovementLoopAddLocation(NPC, -146.96, -0.56, 177.24, 2, 0)
	MovementLoopAddLocation(NPC, -143.65, -0.78, 186.93, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -148.10, -0.56, 190.96, 2, 0)
	MovementLoopAddLocation(NPC, -151.08, -0.56, 191.10, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -148.49, -0.56, 191.15, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 186.03, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.56, 186.03, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -128.42, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -128.10, -0.56, 178.06, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -128.42, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -132.18, -0.91, 181.20, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.79, -1.64, 183.86, 2, 0)
	MovementLoopAddLocation(NPC, -136.39, -0.77, 190.48, 2, math.random(12, 22))
end
