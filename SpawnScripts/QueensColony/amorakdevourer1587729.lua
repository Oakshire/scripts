--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587729.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587729.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:34 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
        SpawnSet(NPC, "hp", 75)
        SpawnSet(NPC, "power", 45)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 223.45, -1.49, -65.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 215.3, -0.98, -71.46, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 223.09, -3.81, -33.93, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 222.06, -1.48, -64.09, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 216.1, -1.46, -63.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 198.96, -0.71, -88.8, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 216.27, -0.78, -85.72, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 220.07, -0.74, -57.75, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 218.98, -0.79, -76.31, 2, math.random(14, 25))
end

