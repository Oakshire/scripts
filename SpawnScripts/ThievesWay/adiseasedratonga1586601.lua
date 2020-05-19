--[[
        Script Name     :       SpawnScripts/ThievesWay/adiseasedratonga1586601.lua
	Script Purpose	:	Waypoint Path for adiseasedratonga1586601.lua
	Script Author	:	Rylec
	Script Date	:	10-06-2019 09:46:58 
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
	MovementLoopAddLocation(NPC, -148.41, -0.56, 179.04, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 166.09, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -132.89, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 172.44, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 190.91, 2, 0)
	MovementLoopAddLocation(NPC, -128.08, -0.56, 191.93, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -126.70, -0.63, 180.05, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -128.42, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -132.89, -0.56, 176.08, 2, 0)
	MovementLoopAddLocation(NPC, -134.58, -0.56, 174.60, 2, 0)
        MovementLoopAddLocation(NPC, -140.64, -0.56, 172.48, 2, 0)
	MovementLoopAddLocation(NPC, -148.61, -0.56, 166.48, 2, 0)
	MovementLoopAddLocation(NPC, -152.03, -0.56, 164.95, 2, math.random(12, 22))
	MovementLoopAddLocation(NPC, -148.43, -0.56, 166.09, 2, 0)
	MovementLoopAddLocation(NPC, -148.43, -0.56, 170.97, 2, 0)
	MovementLoopAddLocation(NPC, -143.46, -0.80, 180.99, 2, 0)
	MovementLoopAddLocation(NPC, -139.45, -0.56, 186.03, 2, math.random(12, 22))
end
