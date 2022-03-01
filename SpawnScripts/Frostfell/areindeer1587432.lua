--[[
        Script Name     :       SpawnScripts/Frostfell/areindeer1587432.lua
	Script Purpose	:	Waypoint Path for areindeer1587432.lua
	Script Author	:	Rylec
	Script Date	:	12-02-2019 06:50:02 
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
	MovementLoopAddLocation(NPC, 82.95, -35.37, -1627.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 91.67, -36.36, -1656.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.79, -36.33, -1627.06, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 74.56, -35.62, -1637.33, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.95, -35.09, -1625.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 95.12, -37.1, -1623.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 85.19, -37.03, -1616.35, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 96.62, -35.53, -1666.23, 2, math.random(10, 20))
end


