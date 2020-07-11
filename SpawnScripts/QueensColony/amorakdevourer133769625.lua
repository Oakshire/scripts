--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769625.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769625.lua
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
	MovementLoopAddLocation(NPC, 192.3, -0.67, -171.52, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 192.24, -0.67, -173.72, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 180.7, -0.63, -168.45, 2, 0)
	MovementLoopAddLocation(NPC, 176.72, 0.35, -163.48, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 182.5, -0.64, -142.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 192.32, -0.67, -155.77, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 191.55, -0.67, -161.25, 2, 0)
	MovementLoopAddLocation(NPC, 182.41, -0.63, -174.11, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 195.23, -0.68, -168.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 206.39, -0.73, -152.08, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 200.94, -0.7, -159.5, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 185.35, -0.65, -136.63, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 197.97, -0.7, -146.89, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 195.38, -0.68, -159.11, 2, 0)
	MovementLoopAddLocation(NPC, 192.11, -0.67, -167.78, 2, 0)
end