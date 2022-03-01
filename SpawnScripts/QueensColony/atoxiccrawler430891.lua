--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430891.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430891.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:19 
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
	MovementLoopAddLocation(NPC, 129.89, 1.3, 87.74, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 130.04, 1.5, 97.02, 2, 0)
	MovementLoopAddLocation(NPC, 131.17, 1.5, 100.7, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 117.26, 1.55, 109.11, 2, 0)
	MovementLoopAddLocation(NPC, 112.57, 1.56, 109.9, 2, 0)
	MovementLoopAddLocation(NPC, 110.51, 1.47, 111.03, 2, 0)
	MovementLoopAddLocation(NPC, 103.35, 1.6, 118.67, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 101.94, 1.6, 117.56, 2, 0)
	MovementLoopAddLocation(NPC, 100.48, 1.61, 115.39, 2, 0)
	MovementLoopAddLocation(NPC, 100.47, 1.61, 112.26, 2, 0)
	MovementLoopAddLocation(NPC, 104.31, 1.6, 101.29, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 138.84, 1.63, 99.68, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 136.2, 1.48, 100.08, 2, 0)
	MovementLoopAddLocation(NPC, 124.67, 1.32, 97.16, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 123.06, 1.53, 83.36, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 123.48, 1.33, 94.7, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 130.39, 1.5, 97.06, 2, 0)
	MovementLoopAddLocation(NPC, 141.05, 1.46, 97.16, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 128.45, 1.51, 102.45, 2, 0)
	MovementLoopAddLocation(NPC, 124.77, 1.52, 103.96, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 114.43, 1.36, 103.89, 2, math.random(16, 36))
end

