--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430887.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430887.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:16 
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
	MovementLoopAddLocation(NPC, 105.69, 1.59, 104.03, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 113.69, 1.56, 94.34, 2, 0)
	MovementLoopAddLocation(NPC, 119.07, 1.55, 82.49, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 123.68, 1.53, 79.32, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 123.55, 1.33, 93.19, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 119.72, 1.54, 103.75, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 116.69, 1.42, 104.07, 2, 0)
	MovementLoopAddLocation(NPC, 99.45, 1.61, 111.98, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 102.98, 1.6, 112.08, 2, 0)
	MovementLoopAddLocation(NPC, 105.51, 1.59, 113.17, 2, 0)
	MovementLoopAddLocation(NPC, 106.46, 1.59, 114.83, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 110.56, 1.58, 93.25, 2, 0)
	MovementLoopAddLocation(NPC, 112.51, 1.57, 88.78, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 131.24, 1.4, 93.63, 2, 0)
	MovementLoopAddLocation(NPC, 134.65, 1.49, 94.11, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 111.21, 1.63, 86.02, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 120.99, 1.54, 90.5, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 132.47, 1.3, 84.96, 2, math.random(16, 36))
end

