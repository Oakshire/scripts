--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587552.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587552.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:46:31 
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
	MovementLoopAddLocation(NPC, 153.5, 1.23, 33.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 184.78, 1.3, 43.79, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 179.17, 1.34, 25.64, 2, 0)
	MovementLoopAddLocation(NPC, 178.93, 1.34, 15.43, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 179.58, 1.33, 25.48, 2, 0)
	MovementLoopAddLocation(NPC, 186.44, 1.31, 40.99, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 174.92, 1.14, 30.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 165.51, 1.39, 32.04, 2, 0)
	MovementLoopAddLocation(NPC, 159.19, 1.41, 36.13, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 141.57, 1.47, 38.77, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 142.2, 1.47, 34.72, 2, 0)
	MovementLoopAddLocation(NPC, 152.91, 1.38, 22.15, 2, 0)
	MovementLoopAddLocation(NPC, 155.11, 1.13, 17.16, 2, 0)
	MovementLoopAddLocation(NPC, 157.31, 1.42, 15.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 154.92, 1.2, 18.23, 2, 0)
end


