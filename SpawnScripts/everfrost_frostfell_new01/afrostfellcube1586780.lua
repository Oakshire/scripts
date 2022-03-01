--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/afrostfellcube1586780.lua
	Script Purpose	:	Waypoint Path for afrostfellcube1586780.lua
	Script Author	:	Rylec
	Script Date	:	11-27-2019 06:00:58 
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
	MovementLoopAddLocation(NPC, 172.04, -38.97, -1731.92, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 166.46, -38.97, -1720.13, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 177.75, -38.97, -1711.54, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 148.88, -38.97, -1727.93, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 152.26, -38.97, -1727.94, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 157.56, -38.97, -1733.99, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 168.34, -38.97, -1728.04, 1, math.random(10, 21))
	MovementLoopAddLocation(NPC, 161.37, -38.97, -1711.62, 1, math.random(10, 21))
end


