--[[
        Script Name     :       SpawnScripts/ThievesWay/asewagerat392419.lua
	Script Purpose	:	Waypoint Path for asewagerat392419.lua
	Script Author	:	Rylec
	Script Date	:	09-22-2019 06:22:19 
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
	MovementLoopAddLocation(NPC, -175.07, 1.29, 58.33, 2, 0)
	MovementLoopAddLocation(NPC, -175.33, 1.28, 58.29, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -176.08, 1.25, 57.99, 2, 0)
	MovementLoopAddLocation(NPC, -176.92, 1.36, 55.84, 2, 0)
	MovementLoopAddLocation(NPC, -177.12, 1.93, 52.98, 2, 0)
	MovementLoopAddLocation(NPC, -178.03, 1.51, 51.67, 2, 0)
	MovementLoopAddLocation(NPC, -179.96, 1.34, 48.10, 2, 0)
	MovementLoopAddLocation(NPC, -179.70, 1.34, 51.15, 2, 0)
	MovementLoopAddLocation(NPC, -178.95, 1.60, 52.77, 2, 0)
	MovementLoopAddLocation(NPC, -179.35, 1.31, 59.15, 2, 0)
	MovementLoopAddLocation(NPC, -179.21, 1.30, 59.16, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -175.39, 1.22, 60.26, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -176.14, 1.30, 57.12, 2, 0)
	MovementLoopAddLocation(NPC, -176.27, 1.29, 57.19, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -178.38, 1.22, 58.07, 2, math.random(10, 18))
	MovementLoopAddLocation(NPC, -175.96, 1.22, 60.07, 2, 0)
	MovementLoopAddLocation(NPC, -174.18, 1.29, 62.35, 2, math.random(10, 18))
end
