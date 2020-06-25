--[[
        Script Name     :       SpawnScripts/Frostfell/afrostfellcube1587422.lua
	Script Purpose	:	Waypoint Path for afrostfellcube1587422.lua
	Script Author	:	Rylec
	Script Date	:	11-27-2019 06:00:51 
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
	MovementLoopAddLocation(NPC, 713.5, -38.81, -1524.35, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 691.65, -38.97, -1533.47, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 712.38, -38.97, -1509.18, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 709.86, -38.86, -1524.8, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 722.72, -38.66, -1523.13, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 705.98, -38.92, -1525.66, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 717.69, -38.72, -1524.51, 1, math.random(10, 21))
end
