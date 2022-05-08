--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769521.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769521.lua
	Script Author	:	Rylec
	Script Date	:	06-26-2020 06:14:22 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "4") 
        SpawnSet(NPC, "size", "28.8")
        SpawnSet(NPC, "hp", 110)
        SpawnSet(NPC, "power", 55)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 248.66, -1.07, -139.87, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 232.64, -0.83, -126.12, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 240.09, -0.86, -127.59, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 235.53, -0.84, -144.04, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 240.95, -0.63, -148.96, 2, 0)
	MovementLoopAddLocation(NPC, 245.69, -0.1, -152.14, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 243.92, -0.87, -145.44, 2, 0)
	MovementLoopAddLocation(NPC, 238.5, -0.85, -134.67, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 232.6, -0.83, -132.29, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 226.97, -0.81, -121.22, 2, math.random(14, 25))
end


