--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393129.lua
	Script Purpose	:	Waypoint Path for atrashhopper393129.lua
	Script Author	:	Rylec
	Script Date	:	10-17-2019 03:28:16 
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
	MovementLoopAddLocation(NPC, -181.98, 0.00, 138.04, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.87, 0.00, 137.15, 2, 0)
	MovementLoopAddLocation(NPC, -178.88, 0.00, 137.13, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -181.24, 0.00, 135.01, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -180.22, 0.00, 137.23, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.09, 0.00, 135.02, 2, 0)
	MovementLoopAddLocation(NPC, -182.09, 0.00, 135.01, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -177.25, 0.06, 135.11, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -178.00, 0.00, 141.24, 2, 0)
	MovementLoopAddLocation(NPC, -179.64, 0.00, 143.39, 2, 0)
	MovementLoopAddLocation(NPC, -180.17, 0.02, 144.82, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -182.05, 0.00, 140.81, 2, 0)
end

