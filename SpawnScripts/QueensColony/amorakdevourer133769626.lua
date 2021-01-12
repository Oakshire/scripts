--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769626.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769626.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:45 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4") 
        SpawnSet(NPC, "size", "28.8")
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 179.17, 1.03, -149.87, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 186.71, -0.65, -163.62, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 192.09, -0.67, -161.31, 2, 0)
	MovementLoopAddLocation(NPC, 205, -0.72, -152.11, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 206.4, -0.73, -150.77, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 203.72, -0.72, -145.07, 2, 0)
	MovementLoopAddLocation(NPC, 202.09, -0.71, -137.64, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 202.16, -0.71, -145.62, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 188.61, -0.66, -149.36, 2, 0)
end