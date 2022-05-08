--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer428726.lua
	Script Purpose	:	Waypoint Path for amorakdevourer428726.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:08:43 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
        SpawnSet(NPC, "difficulty", "2")
        SpawnSet(NPC, "hp", 30)
        SpawnSet(NPC, "power", 15)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 261.19, -4.55, 54.63, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 257.85, -4.11, 52.88, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 262.83, -6, 64.84, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 270.44, -4.39, 48.46, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 266, -4.26, 47.05, 2, 0)
	MovementLoopAddLocation(NPC, 260.28, -4.09, 44, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 262.34, -4.56, 60.44, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 261.87, -4.56, 55.37, 2, 0)
	MovementLoopAddLocation(NPC, 260.88, -4.23, 51.41, 2, 0)
	MovementLoopAddLocation(NPC, 261.43, -4.09, 46.37, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 260.62, -4, 49.79, 2, 0)
	MovementLoopAddLocation(NPC, 261.25, -4.43, 52.78, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 269.69, -4.4, 52.73, 2, math.random(14, 25))
end