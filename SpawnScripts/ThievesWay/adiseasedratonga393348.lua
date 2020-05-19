--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga393348.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga393348.lua
	Script Author	:	Rylec
	Script Date	:	10-06-2019 09:45:56 
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
	MovementLoopAddLocation(NPC, -148.28, -0.66, 167.61, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.31, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -133.15, -0.80, 187.95, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.31, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -145.73, -0.56, 177.83, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -146.68, -0.56, 188.64, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -143.08, -0.56, 190.74, 2, 0)
	MovementLoopAddLocation(NPC, -130.17, -0.56, 192.02, 2, 0)
	MovementLoopAddLocation(NPC, -130.26, -0.56, 192.03, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -131.43, -0.56, 191.87, 2, 0)
	MovementLoopAddLocation(NPC, -134.03, -0.81, 189.38, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.56, 174.00, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.31, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -145.12, -0.56, 187.54, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -142.70, -0.56, 175.62, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -125.83, -0.56, 176.08, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -128.00, -1.94, 182.54, 2, 0)
	MovementLoopAddLocation(NPC, -132.41, -0.56, 186.09, 2, 0)
	MovementLoopAddLocation(NPC, -135.32, -0.56, 192.47, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -137.39, -1.87, 184.89, 2, 0)
	MovementLoopAddLocation(NPC, -142.61, -0.61, 181.03, 2, 0)
	MovementLoopAddLocation(NPC, -148.00, -0.58, 176.21, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -146.27, -0.56, 188.07, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -145.83, -0.56, 177.85, 2, 0)
end

