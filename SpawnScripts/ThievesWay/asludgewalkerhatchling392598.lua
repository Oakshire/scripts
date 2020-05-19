--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392598.lua
	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392598.lua
	Script Author	:	Rylec
	Script Date	:	09-22-2019 09:41:19 
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
	MovementLoopAddLocation(NPC, -161.07, 1.22, 60.84, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -154.71, 1.34, 61.25, 2, 0)
	MovementLoopAddLocation(NPC, -153.44, 1.34, 60.94, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -158.81, 1.82, 58.66, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -156.70, 1.34, 59.40, 2, 0)
	MovementLoopAddLocation(NPC, -155.12, 1.34, 60.98, 2, 0)
	MovementLoopAddLocation(NPC, -153.22, 1.34, 61.62, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -151.23, 1.34, 62.76, 2, 0)
	MovementLoopAddLocation(NPC, -150.90, 1.34, 62.87, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -156.14, 1.34, 61.51, 2, 0)
	MovementLoopAddLocation(NPC, -158.66, 1.58, 60.92, 2, 0)
	MovementLoopAddLocation(NPC, -161.76, 1.22, 61.49, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -159.10, 1.58, 60.97, 2, 0)
	MovementLoopAddLocation(NPC, -158.96, 1.58, 62.30, 2, 0)
	MovementLoopAddLocation(NPC, -158.58, 1.58, 61.96, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -156.53, 1.34, 60.84, 2, 0)
	MovementLoopAddLocation(NPC, -156.86, 1.34, 60.85, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -158.74, 1.58, 61.13, 2, 0)
	MovementLoopAddLocation(NPC, -159.79, 1.45, 60.89, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -156.05, 1.34, 60.66, 2, 0)
	MovementLoopAddLocation(NPC, -156.28, 1.34, 60.78, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -158.38, 1.58, 62.00, 2, 0)
	MovementLoopAddLocation(NPC, -162.59, 1.22, 61.95, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -161.84, 1.22, 62.08, 2, 0)
	MovementLoopAddLocation(NPC, -161.34, 1.22, 61.94, 2, math.random(12, 18))
end
