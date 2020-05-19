--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392607.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392607.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:28:22 
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
	MovementLoopAddLocation(NPC, -182.04, 0.00, 138.91, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.09, 0.00, 140.31, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -182.35, 0.00, 135.37, 2, 0)
	MovementLoopAddLocation(NPC, -181.42, 0.00, 133.17, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -183.87, 0.05, 138.89, 2, 0)
	MovementLoopAddLocation(NPC, -184.20, 0.08, 140.15, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -180.22, 0.00, 137.84, 2, 0)
	MovementLoopAddLocation(NPC, -177.73, 0.00, 136.13, 2, 0)
	MovementLoopAddLocation(NPC, -177.34, 0.13, 134.33, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -177.49, 0.00, 139.52, 2, 0)
	MovementLoopAddLocation(NPC, -176.94, 0.06, 141.87, 2, 0)
	MovementLoopAddLocation(NPC, -180.14, 0.00, 143.05, 2, 0)
end
