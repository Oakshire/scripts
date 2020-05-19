--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393149.lua
	Script Purpose	:	Waypoint Path for atrashhopper393149.lua
	Script Author	:	Rylec
	Script Date	:	09-22-2019 08:31:30 
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
	MovementLoopAddLocation(NPC, -157.31, 1.34, 60.92, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -160.95, 1.25, 59.94, 2, 0)
	MovementLoopAddLocation(NPC, -160.65, 1.25, 59.95, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -156.75, 1.34, 61.96, 2, 0)
	MovementLoopAddLocation(NPC, -156.48, 1.34, 61.88, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -152.51, 1.34, 61.90, 2, 0)
	MovementLoopAddLocation(NPC, -152.09, 1.34, 61.66, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -156.04, 1.34, 62.18, 2, 0)
	MovementLoopAddLocation(NPC, -156.38, 1.34, 62.00, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -158.98, 1.58, 60.94, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -153.60, 1.34, 60.84, 2, 0)
	MovementLoopAddLocation(NPC, -153.15, 1.34, 61.08, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -154.25, 1.34, 61.45, 2, 0)
	MovementLoopAddLocation(NPC, -154.57, 1.34, 61.64, 2, 0)
	MovementLoopAddLocation(NPC, -154.57, 1.34, 61.64, 2, math.random(8, 18))
end
