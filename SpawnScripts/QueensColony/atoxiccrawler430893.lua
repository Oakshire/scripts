--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430893.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430893.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:47:24 
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
	MovementLoopAddLocation(NPC, 115.95, 1.57, 83.49, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 117.11, 1.35, 101.4, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 119.77, 1.34, 98.42, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 125.21, 1.32, 93.88, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 119.63, 1.54, 109.55, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 104.98, 1.59, 100.97, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 96.69, 1.62, 111.82, 2, 0)
	MovementLoopAddLocation(NPC, 93.6, 1.63, 114.45, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 101.08, 1.6, 106.83, 2, 0)
	MovementLoopAddLocation(NPC, 103.17, 1.6, 105.17, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 100.38, 1.61, 115.88, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 106.7, 1.59, 101.42, 2, 0)
	MovementLoopAddLocation(NPC, 112.85, 1.57, 95.68, 2, 0)
	MovementLoopAddLocation(NPC, 114.89, 1.56, 91.37, 2, 0)
	MovementLoopAddLocation(NPC, 116.5, 1.6, 80.38, 2, math.random(16, 36))
end


