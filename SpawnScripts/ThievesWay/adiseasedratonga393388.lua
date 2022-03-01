--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga393388.lua
	Script Purpose	:	Waypoint Path for ratonga22b003.lua
	Script Author	:	Rylec
	Script Date	:	10-06-2019 09:46:13 
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
	MovementLoopAddLocation(NPC, -125.46, -0.56, 170.29, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -128.42, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -144.06, -0.68, 176.67, 2, 0)
	MovementLoopAddLocation(NPC, -147.23, -0.56, 176.91, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -142.80, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -140.54, -0.56, 180.97, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.00, -0.56, 187.00, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.24, -0.56, 175.84, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 166.90, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -142.80, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -128.42, -0.56, 180.97, 2, 0)
	MovementLoopAddLocation(NPC, -128.26, -0.56, 179.88, 2, math.random(12, 22))
end