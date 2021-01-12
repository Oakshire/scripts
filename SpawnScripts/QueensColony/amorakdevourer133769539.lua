--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769539.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769539.lua
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
	MovementLoopAddLocation(NPC, 227.53, -0.8, -179.77, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 219.39, -0.77, -173.69, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 224.85, -0.79, -168.32, 2, 0)
	MovementLoopAddLocation(NPC, 234, -0.82, -165.78, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 245.22, -0.09, -154.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 241.19, -0.18, -159.32, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 250.3, -0.77, -154.99, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 244.87, -0.86, -184.82, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 239.45, -0.66, -181.37, 2, 0)
	MovementLoopAddLocation(NPC, 234.05, -0.82, -175.64, 2, 0)
	MovementLoopAddLocation(NPC, 228.93, -0.81, -168.41, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 234.51, -0.79, -173.24, 2, math.random(14, 25))
end

