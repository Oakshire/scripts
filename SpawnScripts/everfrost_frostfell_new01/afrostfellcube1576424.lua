--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/afrostfellcube1576424.lua
	Script Purpose	:	Waypoint Path for afrostfellcube1576424.lua
	Script Author	:	Rylec
	Script Date	:	11-27-2019 06:00:48 
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
	MovementLoopAddLocation(NPC, 443.49, -38.97, -1391, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 454.48, -38.97, -1414.24, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 454.75, -38.97, -1402.55, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 460.6, -38.97, -1391.96, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 475.63, -38.97, -1409.65, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 454.49, -38.97, -1388.15, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 472.45, -38.97, -1400.55, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 456.13, -38.97, -1401.03, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 463.97, -38.97, -1411.68, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 462.56, -38.97, -1392.9, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 446.64, -38.97, -1410.83, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 459.62, -38.97, -1401.07, 1, math.random(10, 21))
end

