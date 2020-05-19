--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430930.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430930.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:46:49 
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
	MovementLoopAddLocation(NPC, 129.94, 1.5, 98.43, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 106.57, 1.38, 111.48, 2, 0)
	MovementLoopAddLocation(NPC, 102.53, 1.6, 111.94, 2, 0)
	MovementLoopAddLocation(NPC, 98.08, 1.62, 116.02, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 95.53, 1.63, 117.37, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 99.48, 1.61, 116.85, 2, 0)
	MovementLoopAddLocation(NPC, 104.4, 1.59, 116.9, 2, 0)
	MovementLoopAddLocation(NPC, 107.7, 1.58, 115.06, 2, 0)
	MovementLoopAddLocation(NPC, 129.81, 1.47, 82.59, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 131.18, 1.34, 92.95, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 115.95, 1.56, 93.05, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 116.9, 1.55, 85.99, 2, 0)
	MovementLoopAddLocation(NPC, 118.43, 1.56, 82.23, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 118.05, 1.55, 83.67, 2, 0)
	MovementLoopAddLocation(NPC, 117.01, 1.55, 86.09, 2, 0)
	MovementLoopAddLocation(NPC, 114.25, 1.56, 108.01, 2, 0)
	MovementLoopAddLocation(NPC, 115.98, 1.55, 113.01, 2, 0)
	MovementLoopAddLocation(NPC, 114.94, 1.55, 114.49, 2, 0)
	MovementLoopAddLocation(NPC, 112.75, 1.56, 115.01, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 115.73, 1.55, 114.53, 2, 0)
	MovementLoopAddLocation(NPC, 120.29, 1.54, 110.5, 2, 0)
end


