--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587730.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587730.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:36 
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
	MovementLoopAddLocation(NPC, 219.12, -0.76, -57.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 222.47, -3.88, -38.36, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 226.76, -3.83, -32.53, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 223.22, -3.84, -38.03, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 222.92, -0.76, -57.84, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 218.02, -1.2, -60.64, 2, math.random(14, 25))
end

