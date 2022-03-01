--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/afrostfellcube1586782.lua
	Script Purpose	:	Waypoint Path for afrostfellcube1586782.lua
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
	MovementLoopAddLocation(NPC, 573.5, -38.81, -1569.35, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 551.65, -38.97, -1578.47, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 572.38, -38.97, -1554.18, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 569.86, -38.86, -1569.8, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 582.72, -38.66, -1568.13, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 565.98, -38.92, -1570.66, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 577.69, -38.72, -1569.51, 1, math.random(10, 21))
end

