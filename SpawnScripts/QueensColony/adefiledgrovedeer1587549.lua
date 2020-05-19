--[[
        Script Name     :       SpawnScripts/QueensColony/adefiledgrovedeer1587549.lua
	Script Purpose	:	Waypoint Path for adefiledgrovedeer1587549.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:46:12 
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
	MovementLoopAddLocation(NPC, 186.93, 1.31, 17.69, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 188.88, 1.38, 20.38, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 189.39, 1.3, 24.05, 2, 0)
	MovementLoopAddLocation(NPC, 165.72, 1.38, 57.49, 2, 0)
	MovementLoopAddLocation(NPC, 163.97, 1.38, 62.78, 2, 0)
	MovementLoopAddLocation(NPC, 149.62, 1.43, 84.24, 2, 0)
	MovementLoopAddLocation(NPC, 145.27, 1.45, 89.02, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 144.6, 1.45, 91.27, 2, 0)
	MovementLoopAddLocation(NPC, 141.35, 1.46, 94.33, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 144.19, 1.45, 92.85, 2, 0)
	MovementLoopAddLocation(NPC, 148.29, 1.44, 92.77, 2, 0)
	MovementLoopAddLocation(NPC, 173.09, 1.35, 99.1, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 183.98, 1.31, 87.91, 2, 0)
	MovementLoopAddLocation(NPC, 186.48, 1.3, 83.03, 2, 0)
	MovementLoopAddLocation(NPC, 194.73, 1.07, 75.81, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 184.15, 1.31, 74.51, 2, 0)
	MovementLoopAddLocation(NPC, 181.04, 1.32, 72.96, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 194.54, 1.28, 46.66, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 173.03, 1.36, 36.12, 2, math.random(10, 24))
end


