--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler430898.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler430898.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:46:46 
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
	MovementLoopAddLocation(NPC, 139.04, 1.47, 94.63, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 137.71, 1.48, 95.06, 2, 0)
	MovementLoopAddLocation(NPC, 126.12, 1.52, 101.03, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 119.75, 1.6, 111.73, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 117.56, 1.55, 109.59, 2, 0)
	MovementLoopAddLocation(NPC, 100.78, 1.6, 108, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 122.25, 1.53, 109.12, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 126.1, 1.37, 90.27, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 123.65, 1.53, 102.41, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 135.09, 1.49, 97.66, 2, 0)
end


