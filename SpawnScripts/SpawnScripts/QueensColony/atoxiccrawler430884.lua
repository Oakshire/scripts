--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430884.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430884.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:09 
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
	MovementLoopAddLocation(NPC, 99.42, 1.61, 107.66, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 109.63, 1.37, 105.24, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 108.55, 1.38, 107.01, 2, 0)
	MovementLoopAddLocation(NPC, 105.71, 1.59, 118.38, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 107.14, 1.58, 115.46, 2, 0)
	MovementLoopAddLocation(NPC, 109.16, 1.58, 114.34, 2, 0)
	MovementLoopAddLocation(NPC, 113.77, 1.56, 115.44, 2, 0)
	MovementLoopAddLocation(NPC, 118.61, 1.62, 113.09, 2, 0)
	MovementLoopAddLocation(NPC, 126.9, 1.51, 108.53, 2, 0)
	MovementLoopAddLocation(NPC, 140.12, 1.47, 95.8, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 124.68, 1.52, 102.61, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 114.68, 1.56, 110.33, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 114.7, 1.6, 82.36, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 117.06, 1.56, 82.61, 2, 0)
	MovementLoopAddLocation(NPC, 135.82, 1.48, 94.62, 2, 0)
	MovementLoopAddLocation(NPC, 137.33, 1.48, 96.43, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 113.32, 1.49, 98.77, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 116.11, 1.57, 84.27, 2, 0)
	MovementLoopAddLocation(NPC, 118.67, 1.97, 77, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 119.1, 1.56, 81.87, 2, 0)
	MovementLoopAddLocation(NPC, 131.3, 1.42, 93.84, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 129.27, 1.31, 93.83, 2, 0)
	MovementLoopAddLocation(NPC, 107.05, 1.59, 101.27, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 109.47, 1.37, 105.35, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 107.71, 1.38, 108.55, 2, 0)
	MovementLoopAddLocation(NPC, 105.88, 1.59, 116.56, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 105.83, 1.59, 112.84, 2, 0)
end

