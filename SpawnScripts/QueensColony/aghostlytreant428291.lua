--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlytreant428291.lua
	Script Purpose	:	Waypoint Path for aghostlytreant428291.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:48:03 
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
	MovementLoopAddLocation(NPC, 156.98, 1.32, -49.15, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 141.16, 1.5, -62.5, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 153.18, 1.25, -59.38, 1.5, 0)
	MovementLoopAddLocation(NPC, 160.9, 1.42, -55.82, 1.5, 0)
	MovementLoopAddLocation(NPC, 175.59, 1.3, -56.16, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 159.63, 0.34, -76.51, 1.5, 0)
	MovementLoopAddLocation(NPC, 157.1, 0.35, -82.24, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 157.6, 0.35, -77.4, 1.5, 0)
end


