--[[
        Script Name     :       SpawnScripts/Frostfell/areindeer1587433.lua
	Script Purpose	:	Waypoint Path for areindeer1587433.lua
	Script Author	:	Rylec
	Script Date	:	12-02-2019 06:50:04 
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
	MovementLoopAddLocation(NPC, 59.86, -36.58, -1645.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.38, -34.87, -1650.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 73.4, -35.29, -1643.65, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 69.27, -34.92, -1655.99, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.17, -36.54, -1667.26, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 62.77, -36.93, -1636.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 59.23, -36.01, -1650.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.34, -35.99, -1643.09, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 76.08, -34.87, -1649.52, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 64.04, -35.36, -1656.93, 2, math.random(10, 20))
end


