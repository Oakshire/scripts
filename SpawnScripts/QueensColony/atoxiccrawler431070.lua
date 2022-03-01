--[[
        Script Name     :       SpawnScripts/QueensColony/atoxiccrawler431070.lua
	Script Purpose	:	Waypoint Path for atoxiccrawler431070.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:46:55 
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
	MovementLoopAddLocation(NPC, 117.13, 1.55, 116.09, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 119.51, 1.55, 111.03, 2, 0)
	MovementLoopAddLocation(NPC, 117.53, 1.35, 102.09, 2, 0)
	MovementLoopAddLocation(NPC, 115.75, 1.35, 99.71, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 129.97, 1.3, 90.32, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 128.6, 1.31, 91.53, 2, 0)
	MovementLoopAddLocation(NPC, 119.52, 1.54, 105.31, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 113.22, 1.36, 105.18, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 124.71, 1.52, 110.67, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 114.68, 1.39, 98.43, 2, math.random(16, 36))
	MovementLoopAddLocation(NPC, 127.42, 1.34, 89.05, 2, math.random(16, 36))
end


