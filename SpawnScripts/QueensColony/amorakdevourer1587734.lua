--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587734.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587734.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:49 
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
	MovementLoopAddLocation(NPC, 222.79, -3.85, -32.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 222.18, -3.71, -40.34, 2, 0)
	MovementLoopAddLocation(NPC, 218.17, -1.09, -49.93, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 208.9, -0.75, -79.39, 2, 0)
	MovementLoopAddLocation(NPC, 202.69, -0.72, -91.34, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 212.77, -1.02, -70.92, 2, 0)
	MovementLoopAddLocation(NPC, 222, -2.95, -43.87, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 215.22, -1.39, -62.14, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 222.01, -2.47, -45.7, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 219.8, -0.8, -73.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 222.87, -1.49, -63.67, 2, 0)
	MovementLoopAddLocation(NPC, 222.99, -3.79, -38.88, 2, math.random(14, 25))
end

