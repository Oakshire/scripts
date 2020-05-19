--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587548.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587548.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:42:32 
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
	MovementLoopAddLocation(NPC, 176.93, 1.35, 17.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 188.46, 1.36, 9.89, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 172.87, 1.16, 12.59, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 147.51, 1.44, 39.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.6, 1.23, 40.49, 2, 0)
	MovementLoopAddLocation(NPC, 157.81, 1.41, 40.91, 2, 0)
	MovementLoopAddLocation(NPC, 182.83, 1.12, 54.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.06, 1.34, 81.04, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169.01, 1.36, 81.17, 2, 0)
	MovementLoopAddLocation(NPC, 162.18, 1.39, 86.47, 2, 0)
	MovementLoopAddLocation(NPC, 145.91, 1.44, 96.91, 2, 0)
	MovementLoopAddLocation(NPC, 141.65, 1.46, 96.91, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 146.03, 1.45, 89.43, 2, 0)
	MovementLoopAddLocation(NPC, 154.05, 1.42, 83.79, 2, 0)
	MovementLoopAddLocation(NPC, 159.28, 1.4, 78.4, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 171.81, 1.35, 79.84, 2, 0)
	MovementLoopAddLocation(NPC, 179.4, 1.32, 78.93, 2, 0)
	MovementLoopAddLocation(NPC, 194.67, 1.08, 83.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 169.09, 1.17, 22.72, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 173.03, 1.36, 36.06, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 172.78, 1.16, 22.65, 2, 0)
end


