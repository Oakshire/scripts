--[[
        Script Name     :       SpawnScripts/ThievesWay/atrashhopper393148.lua
	Script Purpose	:	Waypoint Path for atrashhopper393148.lua
	Script Author	:	Rylec
	Script Date	:	09-18-2019 09:10:30 
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
	MovementLoopAddLocation(NPC, -152.40, 1.34, 60.89, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -154.00, 1.34, 61.00, 2, 0)
	MovementLoopAddLocation(NPC, -159.10, 1.57, 60.95, 2, 0)
	MovementLoopAddLocation(NPC, -159.00, 1.58, 61.00, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -157.33, 1.34, 61.20, 2, 0)
	MovementLoopAddLocation(NPC, -153.11, 1.34, 61.75, 2, 0)
        -- MovementLoopAddLocation(NPC, -153.25, 1.34, 61.35, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -156.73, 1.34, 62.07, 2, 0)
	MovementLoopAddLocation(NPC, -156.63, 1.34, 62.24, 2, math.random(4, 6))
	MovementLoopAddLocation(NPC, -156.03, 1.34, 61.45, 2, 0)
	MovementLoopAddLocation(NPC, -155.29, 1.34, 60.93, 2, 0)
	MovementLoopAddLocation(NPC, -155.17, 1.34, 60.98, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -154.06, 1.34, 61.99, 2, 0)
	MovementLoopAddLocation(NPC, -153.93, 1.34, 62.25, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -155.58, 1.34, 62.01, 2, 0)
        MovementLoopAddLocation(NPC, -155.58, 1.34, 61.75, 2, math.random(4, 6))
	MovementLoopAddLocation(NPC, -162.74, 1.22, 61.85, 2, math.random(8, 18))
        -- MovementLoopAddLocation(NPC, -162.60, 1.22, 61.70, 2, math.random(8, 18))
	MovementLoopAddLocation(NPC, -159.02, 1.58, 62.03, 2, 0)
	MovementLoopAddLocation(NPC, -158.78, 1.58, 61.98, 2, math.random(8, 18))
        MovementLoopAddLocation(NPC, -152.40, 1.34, 60.70, 2, math.random(8, 18))
end
