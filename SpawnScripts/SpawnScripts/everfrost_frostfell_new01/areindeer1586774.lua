--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/areindeer1586774.lua
	Script Purpose	:	Waypoint Path for areindeer1586774.lua
	Script Author	:	Rylec
	Script Date	:	12-01-2019 07:29:00 
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
	MovementLoopAddLocation(NPC, 23.35, -35.79, -1411.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 53.85, -36.48, -1413.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 38.54, -35.79, -1397.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 45.37, -36.06, -1427.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 30.16, -35.79, -1409.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.77, -36.79, -1407.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.9, -35.79, -1403.62, 2, math.random(10, 20))
end


