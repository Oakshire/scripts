--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430886.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430886.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:14 
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
	MovementLoopAddLocation(NPC, 110.56, 1.61, 87.77, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 128.12, 1.31, 90.72, 2, 0)
	MovementLoopAddLocation(NPC, 130.37, 1.3, 91.66, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 129.17, 1.51, 96.85, 2, 0)
	MovementLoopAddLocation(NPC, 127.89, 1.51, 107.07, 2, 0)
	MovementLoopAddLocation(NPC, 124.68, 1.52, 110.91, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 121.97, 1.65, 74.6, 2, 0)
	MovementLoopAddLocation(NPC, 122.36, 1.87, 72.83, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 120.93, 1.54, 102.42, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 129.77, 1.5, 99.31, 2, 0)
	MovementLoopAddLocation(NPC, 138.75, 1.47, 97.26, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 136.08, 1.48, 96.8, 2, 0)
	MovementLoopAddLocation(NPC, 130.38, 1.5, 97.21, 2, 0)
	MovementLoopAddLocation(NPC, 112.19, 1.57, 94.53, 2, 0)
	MovementLoopAddLocation(NPC, 110.76, 1.57, 92.76, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 111.51, 1.37, 107.36, 2, 0)
	MovementLoopAddLocation(NPC, 110.87, 1.43, 110.45, 2, 0)
	MovementLoopAddLocation(NPC, 110.97, 1.57, 113.31, 2, 0)
	MovementLoopAddLocation(NPC, 110.9, 1.57, 114.38, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 110.49, 1.57, 112.87, 2, 0)
	MovementLoopAddLocation(NPC, 110.39, 1.58, 93.69, 2, 0)
end


