--[[
        Script Name     :       SpawnScripts/QueensColony/aghostlytreant428360.lua
	Script Purpose	:	Waypoint Path for aghostlytreant428360.lua
	Script Author	:	Rylec
	Script Date	:	05-02-2020 05:48:25 
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
	MovementLoopAddLocation(NPC, 113.08, 1.6, -87.24, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 95.97, 1.49, -104.54, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 101.46, 1.45, -97.65, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 127.87, 1.55, -80.85, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 102.78, 1.44, -97.92, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 118.18, 1.39, -94.06, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 110.27, 1.62, -100.25, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 128.31, 1.55, -77.65, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 125.18, 1.36, -91.03, 1.5, 0)
	MovementLoopAddLocation(NPC, 121.83, 1.37, -92.91, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 127.73, 1.35, -91.89, 1.5, math.random(14, 30))
	MovementLoopAddLocation(NPC, 123.89, 1.36, -91.58, 1.5, 0)
end


