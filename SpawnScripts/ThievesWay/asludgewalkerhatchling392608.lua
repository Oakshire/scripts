--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392608.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392608.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:28:26 
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
	MovementLoopAddLocation(NPC, -176.86, 0.03, 140.15, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -178.28, 0.00, 139.48, 2, 0)
	MovementLoopAddLocation(NPC, -179.34, 0.00, 136.84, 2, 0)
	MovementLoopAddLocation(NPC, -179.05, 0.00, 135.29, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -178.92, 0.00, 136.24, 2, 0)
	MovementLoopAddLocation(NPC, -178.04, 0.00, 139.89, 2, 0)
	MovementLoopAddLocation(NPC, -178.09, 0.00, 141.23, 2, 0)
	MovementLoopAddLocation(NPC, -178.13, 0.00, 141.30, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -184.03, 0.06, 143.91, 2, 0)
	MovementLoopAddLocation(NPC, -184.57, 0.14, 143.59, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -180.45, 0.00, 139.85, 2, 0)
	MovementLoopAddLocation(NPC, -177.30, 0.06, 135.14, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -177.62, 0.00, 135.72, 2, 0)
	MovementLoopAddLocation(NPC, -179.42, 0.00, 139.15, 2, 0)
	MovementLoopAddLocation(NPC, -182.10, 0.00, 142.26, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -180.43, 0.00, 140.36, 2, 0)
	MovementLoopAddLocation(NPC, -175.90, 0.14, 138.09, 2, math.random(12, 18))
end
