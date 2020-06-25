--[[
        Script Name     :       SpawnScripts/Frostfell/areindeer1587431.lua
	Script Purpose	:	Waypoint Path for areindeer1587431.lua
	Script Author	:	Rylec
	Script Date	:	12-02-2019 06:49:59 
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
	MovementLoopAddLocation(NPC, 88.82, -36.41, -1660.18, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 103.86, -34.38, -1652.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 88.28, -36.41, -1652.7, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 99.77, -37.03, -1632.6, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 106.54, -34.41, -1660.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 102.97, -34.34, -1667, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 90.12, -36.38, -1655.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.09, -36.54, -1641.19, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 103.66, -34.38, -1655.47, 2, math.random(10, 20))
end


