--[[
        Script Name     :       SpawnScripts/Frostfell/Shark55212.lua
	Script Purpose	:	Waypoint Path for Shark55212.lua
	Script Author	:	Rylec
	Script Date	:	11-27-2019 06:00:42 
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
	MovementLoopAddLocation(NPC, 151.93, -43.3378, -1445.34, 2, 0)
	MovementLoopAddLocation(NPC, 152.8, -43.3378, -1448.7, 2, 0)
	MovementLoopAddLocation(NPC, 157.37, -43.3378, -1450.46, 2, 0)
	MovementLoopAddLocation(NPC, 162.41, -43.3378, -1446.11, 2, 0)
	MovementLoopAddLocation(NPC, 163.06, -43.3378, -1441.06, 2, 0)
	MovementLoopAddLocation(NPC, 159.94, -43.3378, -1439.26, 2, 0)
	MovementLoopAddLocation(NPC, 155.48, -43.3378, -1441, 2, 0)	
end


