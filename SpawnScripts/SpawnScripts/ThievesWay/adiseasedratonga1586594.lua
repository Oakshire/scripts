--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586594.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586594.lua
	Script Author	:	Rylec
	Script Date	:	10-06-2019 09:46:40 
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
	MovementLoopAddLocation(NPC, -132.43, -0.56, 192.04, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.31, -0.56, 186.03, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 186.03, 2, 0)
	MovementLoopAddLocation(NPC, -143.84, -0.56, 179.30, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -138.60, -0.56, 175.80, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.31, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.56, 187.41, 2, 0)
	MovementLoopAddLocation(NPC, -133.11, -0.56, 192.07, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.49, -0.56, 186.35, 2, 0)
	MovementLoopAddLocation(NPC, -142.31, -0.62, 181.02, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.05, -0.64, 186.99, 2, 0)
	MovementLoopAddLocation(NPC, -137.97, -0.56, 191.28, 2, 0)
	MovementLoopAddLocation(NPC, -142.78, -0.56, 191.05, 2, 0)
	MovementLoopAddLocation(NPC, -145.59, -0.56, 189.09, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -142.80, -0.56, 186.03, 2, 0)
	MovementLoopAddLocation(NPC, -136.30, -1.54, 186.03, 2, 0)
	MovementLoopAddLocation(NPC, -130.63, -0.76, 181.09, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.31, -0.56, 186.03, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 186.03, 2, 0)
	MovementLoopAddLocation(NPC, -145.98, -0.56, 192.04, 2, math.random(12, 22))
end


