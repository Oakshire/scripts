--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769530.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769530.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:27 
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
	MovementLoopAddLocation(NPC, 252.92, -1.12, -159.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 249.29, -1.13, -139.97, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 255.13, -1.06, -161.36, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 235.5, -0.83, -151.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 247.51, -0.93, -139.99, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 239.98, -0.85, -145.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 245.36, -0.87, -137.22, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 246.69, -0.11, -151.22, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 251.52, -1, -168.47, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 234.31, -0.83, -162.93, 2, math.random(14, 25))
end


