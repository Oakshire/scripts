--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430880.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430880.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:03 
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
	MovementLoopAddLocation(NPC, 100.59, 1.61, 116.01, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 101.97, 1.6, 117.01, 2, 0)
	MovementLoopAddLocation(NPC, 107.01, 1.58, 117.33, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 113.79, 1.56, 93.96, 2, 0)
	MovementLoopAddLocation(NPC, 113.42, 1.56, 89.19, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 117.22, 1.47, 103.92, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 115.87, 1.35, 104.09, 2, 0)
	MovementLoopAddLocation(NPC, 107.71, 1.38, 110.25, 2, 0)
	MovementLoopAddLocation(NPC, 103.21, 1.6, 112.09, 2, 0)
	MovementLoopAddLocation(NPC, 100.27, 1.61, 114.28, 2, 0)
	MovementLoopAddLocation(NPC, 98.17, 1.61, 117.43, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 107.67, 1.58, 99.85, 2, 0)
	MovementLoopAddLocation(NPC, 110.15, 1.58, 97.85, 2, 0)
	MovementLoopAddLocation(NPC, 114.03, 1.56, 93.5, 2, 0)
	MovementLoopAddLocation(NPC, 113.43, 1.57, 89.29, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 141.37, 1.46, 94.66, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 113.43, 1.56, 109.37, 2, 0)
	MovementLoopAddLocation(NPC, 106.8, 1.46, 112.14, 2, 0)
	MovementLoopAddLocation(NPC, 103.73, 1.6, 112.37, 2, 0)
	MovementLoopAddLocation(NPC, 100.94, 1.61, 112.93, 2, 0)
	MovementLoopAddLocation(NPC, 100.04, 1.61, 114.56, 2, 0)
end

