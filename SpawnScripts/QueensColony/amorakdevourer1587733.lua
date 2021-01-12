--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587733.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587733.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:46 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 211.04, -0.76, -92.72, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 203.83, -0.73, -93.09, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 208.08, -0.75, -80.46, 2, 0)
	MovementLoopAddLocation(NPC, 215.08, -0.86, -72.93, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 221.23, -3.4, -43.14, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 218.38, -0.79, -79.32, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 213.83, -0.77, -79.53, 2, math.random(14, 25))
end

