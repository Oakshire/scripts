--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430883.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430883.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:06 
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
	MovementLoopAddLocation(NPC, 98.1, 1.62, 113.37, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 105.55, 1.59, 98.53, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 126.94, 1.51, 104.89, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 123.66, 1.52, 106.12, 2, 0)
	MovementLoopAddLocation(NPC, 117.23, 1.55, 114.34, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 115.24, 1.55, 110.55, 2, 0)
	MovementLoopAddLocation(NPC, 112.96, 1.42, 108.05, 2, 0)
	MovementLoopAddLocation(NPC, 112.22, 1.37, 104.35, 2, 0)
	MovementLoopAddLocation(NPC, 115.92, 1.56, 95.37, 2, 0)
	MovementLoopAddLocation(NPC, 119.86, 1.54, 88.29, 2, 0)
	MovementLoopAddLocation(NPC, 120.97, 1.54, 83.58, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 137.42, 1.48, 89.05, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 134.14, 1.41, 89.21, 2, 0)
	MovementLoopAddLocation(NPC, 131.25, 1.3, 91.07, 2, 0)
	MovementLoopAddLocation(NPC, 106.43, 1.46, 111.99, 2, 0)
	MovementLoopAddLocation(NPC, 101.99, 1.6, 111.77, 2, 0)
end


