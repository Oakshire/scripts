--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769524.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769524.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:14:22 
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
	MovementLoopAddLocation(NPC, 237.74, -0.84, -145.97, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 246.91, -0.88, -138.63, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 229.4, -0.82, -128.47, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 232.84, -0.83, -134.9, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 237.61, -1.37, -109.85, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 239.57, -0.85, -148.48, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 234.71, -0.83, -128.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 252.64, -1.05, -151.08, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 243.96, -0.09, -151.06, 2, 0)
end