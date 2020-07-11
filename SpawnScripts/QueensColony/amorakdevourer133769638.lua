--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769638.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769638.lua
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
	MovementLoopAddLocation(NPC, 183.86, -0.65, -140.38, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 171.09, -0.59, -175.89, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 179.65, -0.37, -163.61, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 187.41, -0.65, -158.17, 2, 0)
	MovementLoopAddLocation(NPC, 192.36, -0.67, -155.61, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 213.37, -0.75, -146.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 199.48, -0.7, -170.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 188.01, -0.65, -168.88, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 183.88, -0.64, -163.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 190.7, -0.67, -161.77, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 174.03, -0.6, -174.09, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 182.94, -0.64, -167.12, 2, 0)
	MovementLoopAddLocation(NPC, 188.71, -0.66, -158.34, 2, 0)
	MovementLoopAddLocation(NPC, 199.38, -0.7, -149.52, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 191.19, -0.67, -162.05, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 191.28, -0.67, -158.58, 2, 0)
	MovementLoopAddLocation(NPC, 190.06, -0.67, -153.32, 2, 0)
end