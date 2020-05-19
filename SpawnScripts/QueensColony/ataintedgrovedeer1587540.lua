--[[
        Script Name     :       SpawnScripts/QueensColony/ataintedgrovedeer1587540.lua
	Script Purpose	:	Waypoint Path for ataintedgrovedeer1587540.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:41:40 
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
	MovementLoopAddLocation(NPC, 169.17, 1.37, 57.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 175.99, 1.34, 60.6, 2, 0)
	MovementLoopAddLocation(NPC, 190.72, 1.09, 62.58, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.91, 1.42, 95.95, 2, 0)
	MovementLoopAddLocation(NPC, 147.43, 1.78, 99.5, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 144.81, 1.94, 100.05, 2, 0)
	MovementLoopAddLocation(NPC, 133.71, 1.49, 94.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 136.02, 1.48, 93.62, 2, 0)
	MovementLoopAddLocation(NPC, 148.55, 1.44, 92.14, 2, 0)
	MovementLoopAddLocation(NPC, 162.34, 1.39, 86.19, 2, 0)
	MovementLoopAddLocation(NPC, 165.25, 1.38, 83.83, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 160.04, 1.4, 81.53, 2, 0)
	MovementLoopAddLocation(NPC, 133.93, 1.29, 83.53, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 143.62, 1.46, 78.44, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 165.33, 1.38, 80.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 165.99, 1.38, 67.52, 2, 0)
end


