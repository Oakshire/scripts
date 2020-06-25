--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393128.lua
	Script Purpose	:	Waypoint Path for atrashhopper393128.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:28:10 
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
	MovementLoopAddLocation(NPC, -177.10, 0.07, 135.19, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.45, 0.00, 136.90, 2, 0)
	MovementLoopAddLocation(NPC, -181.03, 0.00, 141.14, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.97, 0.00, 139.38, 2, 0)
	MovementLoopAddLocation(NPC, -178.98, 0.00, 139.37, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -183.40, 0.01, 133.45, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -184.97, 0.21, 136.61, 2, 0)
	MovementLoopAddLocation(NPC, -185.59, 0.38, 138.74, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.82, 0.00, 136.15, 2, 0)
end


