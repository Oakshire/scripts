--[[
        Script Name     :       SpawnScripts/Frostfell/areindeer1587434.lua
	Script Purpose	:	Waypoint Path for areindeer1587434.lua
	Script Author	:	Rylec
	Script Date	:	12-02-2019 06:50:08 
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
	MovementLoopAddLocation(NPC, 86.15, -36.48, -1677.02, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.99, -35.13, -1685.14, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 71.73, -35.68, -1689.58, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 83.6, -35.51, -1691.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 77.51, -36.58, -1677.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 67.37, -36.68, -1674.22, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 78.65, -36.54, -1668.38, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 66.92, -35.54, -1684.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 65.27, -37.71, -1697.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 94.58, -35.31, -1686.75, 2, math.random(10, 20))
end


