--[[
        Script Name     :       SpawnScripts/Frostfell/afrostfellcube1587421.lua
	Script Purpose	:	Waypoint Path for afrostfellcube1587421.lua
	Script Author	:	Rylec
	Script Date	:	11-27-2019 06:00:48 
	Script Notes	:	Locations collected from Live and adjusted
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
	MovementLoopAddLocation(NPC, 423.653, -38.2157, -1747.92, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 403.49, -38.97, -1751, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 414.48, -38.97, -1774.24, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 414.75, -38.97, -1762.55, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 420.6, -38.97, -1751.96, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 435.63, -38.97, -1769.65, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 414.49, -38.97, -1748.15, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 432.45, -38.97, -1760.55, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 416.13, -38.97, -1761.03, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 423.97, -38.97, -1771.68, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 422.56, -38.97, -1752.9, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 406.64, -38.97, -1770.83, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 419.62, -38.97, -1761.07, 1, math.random(10, 21))
end

