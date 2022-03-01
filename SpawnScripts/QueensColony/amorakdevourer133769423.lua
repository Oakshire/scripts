--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769423.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769423.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:53 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
        SpawnSet(NPC, "difficulty", "2") 
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 219.89, -0.88, -58.64, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 218.04, -1.47, -65.39, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 216.93, -1.02, -70.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 219.67, -1.45, -61.98, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 203.39, -0.73, -86.78, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 216.49, -1.01, -70.51, 2, 0)
	MovementLoopAddLocation(NPC, 223.04, -1.38, -48.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 211.5, -0.76, -78.23, 2, math.random(14, 25))
end


