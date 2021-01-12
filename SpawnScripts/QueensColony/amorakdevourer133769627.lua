--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769627.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769627.lua
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
	MovementLoopAddLocation(NPC, 185.21, -0.65, -163.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 196.3, -0.69, -144.72, 2, 0)
	MovementLoopAddLocation(NPC, 201.11, -0.71, -137.24, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 195.18, -0.68, -153.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 188.52, -0.66, -158.12, 2, 0)
	MovementLoopAddLocation(NPC, 186.75, -0.65, -163.97, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 191.17, -0.67, -161.86, 2, 0)
	MovementLoopAddLocation(NPC, 208.66, -0.74, -147.03, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 201.87, -0.71, -161.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 180.75, -0.63, -164.04, 2, 0)
	MovementLoopAddLocation(NPC, 178.14, -0.32, -164.92, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 180.04, 0.33, -160.13, 2, 0)
	MovementLoopAddLocation(NPC, 195.53, -0.69, -145.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 197.96, -0.7, -141.66, 2, math.random(14, 25))
end