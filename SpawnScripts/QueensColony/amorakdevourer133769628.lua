--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769628.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769628.lua
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
	MovementLoopAddLocation(NPC, 165.82, -0.57, -180.18, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 209.75, -0.74, -153.54, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 216.31, -0.76, -146.87, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 188.11, -0.66, -170.16, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 201.42, -0.71, -138.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 183.85, -0.64, -161.14, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 185.1, -0.64, -164.27, 2, 0)
	MovementLoopAddLocation(NPC, 190.93, -0.66, -172.63, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 193.58, -0.68, -162.65, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 190.96, -0.67, -168.81, 2, math.random(14, 25))
end