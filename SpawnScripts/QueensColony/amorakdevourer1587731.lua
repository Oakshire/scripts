--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587731.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587731.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:39 
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
	MovementLoopAddLocation(NPC, 216.12, -0.78, -83.89, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 217.94, -2.79, -46.51, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 213.31, -1, -64.65, 2, 0)
	MovementLoopAddLocation(NPC, 211.28, -0.76, -74.72, 2, 0)
	MovementLoopAddLocation(NPC, 214.64, -0.77, -85.51, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 224.69, -3.82, -34.08, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 216.94, -1.35, -67.59, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 215.3, -1.22, -61.1, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 219.95, -1.13, -68.61, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 216.58, -0.78, -78.89, 2, 0)
end


