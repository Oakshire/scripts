--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430879.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430879.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:01 
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
	MovementLoopAddLocation(NPC, 124.8, 1.52, 109.35, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 126.65, 1.51, 108.07, 2, 0)
	MovementLoopAddLocation(NPC, 128.63, 1.79, 107.42, 2, 0)
	MovementLoopAddLocation(NPC, 129.69, 1.5, 105.48, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 133.55, 1.84, 102.57, 2, 0)
	MovementLoopAddLocation(NPC, 137.34, 1.78, 100.96, 2, 0)
	MovementLoopAddLocation(NPC, 140.19, 1.46, 98.36, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 115.83, 1.45, 105.26, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 127.24, 1.52, 85.13, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 110.88, 1.37, 107.89, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 106.33, 1.58, 119.82, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 109.89, 1.37, 109.81, 2, 0)
	MovementLoopAddLocation(NPC, 116.21, 1.35, 97.51, 2, 0)
	MovementLoopAddLocation(NPC, 133.47, 1.49, 93.24, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 126.27, 1.32, 95.78, 2, 0)
	MovementLoopAddLocation(NPC, 119.93, 1.34, 100.04, 2, 0)
	MovementLoopAddLocation(NPC, 101.24, 1.61, 110.32, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 100.04, 1.61, 111.14, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 114.77, 1.37, 98.5, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 107.28, 1.59, 102.44, 2, math.random(16, 36))
end


