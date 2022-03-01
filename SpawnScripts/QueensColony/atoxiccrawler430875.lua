--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430875.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430875.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:46:58 
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
	MovementLoopAddLocation(NPC, 118.7, 1.54, 104.94, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 108.85, 1.38, 111.53, 2, 0)
	MovementLoopAddLocation(NPC, 106.67, 1.52, 112.45, 2, 0)
	MovementLoopAddLocation(NPC, 103.51, 1.6, 112.41, 2, 0)
	MovementLoopAddLocation(NPC, 101.31, 1.61, 113.6, 2, 0)
	MovementLoopAddLocation(NPC, 100.9, 1.61, 114.53, 2, 0)
	MovementLoopAddLocation(NPC, 100.65, 1.61, 117.25, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 100.51, 1.61, 114.31, 2, 0)
	MovementLoopAddLocation(NPC, 103.14, 1.6, 111.27, 2, 0)
	MovementLoopAddLocation(NPC, 107.88, 1.38, 108.9, 2, 0)
	MovementLoopAddLocation(NPC, 116.18, 1.55, 105.66, 2, 0)
	MovementLoopAddLocation(NPC, 127.26, 1.51, 98.44, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 125.11, 1.52, 88.95, 2, 0)
	MovementLoopAddLocation(NPC, 120.56, 1.54, 84.46, 2, 0)
	MovementLoopAddLocation(NPC, 117.25, 1.56, 82.43, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 119.01, 1.55, 84.46, 2, 0)
	MovementLoopAddLocation(NPC, 121.74, 1.54, 86.43, 2, 0)
	MovementLoopAddLocation(NPC, 124.71, 1.38, 91.74, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 113.44, 1.52, 98.36, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 112.07, 1.37, 103.36, 2, 0)
	MovementLoopAddLocation(NPC, 112.07, 1.36, 106.58, 2, math.random(16, 36))
end

