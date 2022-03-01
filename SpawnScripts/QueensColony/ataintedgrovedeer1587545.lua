--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedgrovedeer1587545.lua
	Script Purpose	:	Waypoint Path for ataintedgrovedeer1587545.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:42:14 
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
	MovementLoopAddLocation(NPC, 190.92, 1.29, 25.72, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 177.1, 1.14, 30.28, 2, 0)
	MovementLoopAddLocation(NPC, 165.7, 1.39, 31.81, 2, 0)
	MovementLoopAddLocation(NPC, 157.3, 1.31, 35.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 172.98, 1.16, 4.44, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 168.83, 1.17, 24.15, 2, 0)
	MovementLoopAddLocation(NPC, 168.33, 1.37, 34.45, 2, 0)
	MovementLoopAddLocation(NPC, 164.78, 1.39, 41.61, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 188.48, 1.3, 30.96, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 187.09, 1.31, 34.97, 2, 0)
	MovementLoopAddLocation(NPC, 181.14, 1.32, 77.44, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 186.77, 1.3, 45.65, 2, 0)
	MovementLoopAddLocation(NPC, 187.07, 1.3, 39.06, 2, 0)
end


