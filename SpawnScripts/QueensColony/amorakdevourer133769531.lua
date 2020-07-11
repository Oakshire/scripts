--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769531.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769531.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:42 
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
	MovementLoopAddLocation(NPC, 232.75, -0.82, -156.72, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 223.05, -0.78, -169.2, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 225.86, -0.79, -166.51, 2, 0)
	MovementLoopAddLocation(NPC, 241.53, -0.27, -153.94, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 240.2, 0.03, -169.48, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 226.41, -0.8, -165.69, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 232.96, -0.82, -173.65, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 251.48, -0.98, -159.13, 2, math.random(14, 25))
end


