--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586598.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586598.lua
	Script Author	:	Rylec
	Script Date	:	10-06-2019 09:46:52 
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
	MovementLoopAddLocation(NPC, -143.77, -0.56, 191.35, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -143.94, -0.68, 180.45, 2, 0)
	MovementLoopAddLocation(NPC, -143.03, -0.58, 176.41, 2, 0)
	MovementLoopAddLocation(NPC, -135.42, -0.56, 173.69, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -142.77, -0.68, 175.98, 2, 0)
	MovementLoopAddLocation(NPC, -147.30, -0.67, 180.55, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -148.43, -0.56, 187.85, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -148.26, -0.90, 171.15, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -138.31, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.56, 166.09, 2, 0)
	MovementLoopAddLocation(NPC, -135.70, -0.55, 162.53, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -141.56, -0.56, 164.14, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 166.09, 2, 0)
	MovementLoopAddLocation(NPC, -142.80, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -138.31, -0.56, 180.15, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -143.21, -1.00, 185.42, 2, 0)
end

