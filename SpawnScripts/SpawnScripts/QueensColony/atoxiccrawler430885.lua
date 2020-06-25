--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430885.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430885.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:11 
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
	MovementLoopAddLocation(NPC, 111.95, 1.51, 99.84, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 115.34, 1.55, 110.61, 2, 0)
	MovementLoopAddLocation(NPC, 118.02, 1.58, 116.63, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 113.57, 1.56, 116.33, 2, 0)
	MovementLoopAddLocation(NPC, 112.15, 1.56, 117.18, 2, 0)
	MovementLoopAddLocation(NPC, 110.44, 1.57, 119.2, 2, 0)
	MovementLoopAddLocation(NPC, 107.15, 1.58, 119.88, 2, 0)
	MovementLoopAddLocation(NPC, 104.56, 1.59, 118.8, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 105.87, 1.59, 118.04, 2, 0)
	MovementLoopAddLocation(NPC, 106.98, 1.58, 116.75, 2, 0)
	MovementLoopAddLocation(NPC, 108.04, 1.58, 114.86, 2, 0)
	MovementLoopAddLocation(NPC, 110.02, 1.57, 113.19, 2, 0)
	MovementLoopAddLocation(NPC, 111.23, 1.55, 111, 2, 0)
	MovementLoopAddLocation(NPC, 116.03, 1.55, 107.22, 2, 0)
	MovementLoopAddLocation(NPC, 136.08, 1.48, 97.15, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 129.92, 1.5, 97.12, 2, 0)
	MovementLoopAddLocation(NPC, 114.24, 1.56, 91.7, 2, 0)
	MovementLoopAddLocation(NPC, 108.12, 1.6, 90.39, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 106.83, 1.6, 93.92, 2, 0)
	MovementLoopAddLocation(NPC, 100.29, 1.61, 112.56, 2, 0)
	MovementLoopAddLocation(NPC, 99.7, 1.61, 119.53, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 99.68, 1.61, 113.19, 2, 0)
	MovementLoopAddLocation(NPC, 103.23, 1.6, 109.17, 2, 0)
	MovementLoopAddLocation(NPC, 107, 1.42, 106.73, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 134.15, 1.49, 101.02, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 130.59, 1.5, 97.87, 2, 0)
	MovementLoopAddLocation(NPC, 129.11, 1.45, 95.82, 2, 0)
	MovementLoopAddLocation(NPC, 128.67, 1.31, 93.22, 2, math.random(16, 36))
end
