--[[
        Script Name     :       SpawnScripts/ThievesWay/asludgewalkerhatchling392597.lua
 	Script Purpose	:	Waypoint Path for asludgewalkerhatchling392597.lua
	Script Author	:	Rylec
	Script Date	:	09-22-2019 09:41:16 
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
	MovementLoopAddLocation(NPC, -154.60, 1.34, 61.88, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -153.73, 1.34, 62.09, 2, 0)
	MovementLoopAddLocation(NPC, -151.48, 1.34, 61.81, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -157.95, 1.45, 61.92, 2, 0)
	MovementLoopAddLocation(NPC, -157.44, 1.34, 61.90, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -155.47, 1.34, 61.56, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -158.57, 1.58, 61.17, 2, 0)
	MovementLoopAddLocation(NPC, -161.35, 1.22, 61.85, 2, math.random(12, 18))
	MovementLoopAddLocation(NPC, -154.31, 1.34, 62.64, 2, 0)
	MovementLoopAddLocation(NPC, -152.16, 1.34, 62.32, 2, 0)
	MovementLoopAddLocation(NPC, -151.39, 1.34, 61.78, 2, math.random(12, 18))
end


