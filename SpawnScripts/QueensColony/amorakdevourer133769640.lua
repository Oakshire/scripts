--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769640.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769640.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:45 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4") 
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 198.21, -0.69, -162.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 193.85, -0.68, -168.87, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 182.69, -0.64, -167.66, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 185.59, -0.34, -155.79, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 198.41, -0.7, -149.42, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 213.49, -0.75, -153.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 182.37, -0.32, -146.69, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 172.57, 0.36, -167.63, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 182.2, -0.63, -167.11, 2, 0)
end