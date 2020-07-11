--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769529.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769529.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:16:17 
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
	MovementLoopAddLocation(NPC, 254.03, -1.23, -181.31, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 238.17, -0.84, -182.53, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 255.19, -1.21, -153.63, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 228.87, -0.8, -175.02, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 248.02, -0.87, -183.95, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 244.06, -0.05, -173.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 244.07, 0.22, -168.59, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 237.73, -0.25, -165.99, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 240.14, -0.43, -160.2, 2, 0)
	MovementLoopAddLocation(NPC, 239, -0.85, -145.25, 2, math.random(14, 25))
end


