--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430892.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430892.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:21 
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
	MovementLoopAddLocation(NPC, 126.04, 1.52, 85.23, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 131.24, 1.5, 79.42, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 135.38, 1.43, 86.66, 2, 0)
	MovementLoopAddLocation(NPC, 137.84, 1.48, 89.83, 2, 0)
	MovementLoopAddLocation(NPC, 140.08, 1.47, 96.84, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 133.93, 1.49, 97.13, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 131.07, 1.5, 97.16, 2, 0)
	MovementLoopAddLocation(NPC, 127.44, 1.31, 94.72, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 125.96, 1.52, 80.58, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 131.8, 1.32, 91.96, 2, 0)
	MovementLoopAddLocation(NPC, 133.38, 1.49, 95.6, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 133.17, 1.49, 97.2, 2, 0)
	MovementLoopAddLocation(NPC, 131.97, 1.49, 100.27, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 108.07, 1.58, 99.8, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 109.85, 1.58, 100.17, 2, 0)
	MovementLoopAddLocation(NPC, 124.77, 1.52, 109.23, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 123.52, 1.52, 110.63, 2, math.random(16, 36))
end

