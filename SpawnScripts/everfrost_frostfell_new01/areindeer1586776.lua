--[[
        Script Name     :       SpawnScripts/everfrost_frostfell_new01/areindeer1586776.lua
	Script Purpose	:	Waypoint Path for areindeer1586776.lua
	Script Author	:	Rylec
	Script Date	:	12-01-2019 07:29:05 
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
	MovementLoopAddLocation(NPC, 52.36, -35.79, -1402.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.71, -35.79, -1398.64, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.2, -35.79, -1405.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 58.22, -35.61, -1396.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 35.74, -35.79, -1404.74, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 28.79, -35.79, -1405.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.98, -35.93, -1420.51, 2, math.random(10, 20))
end


