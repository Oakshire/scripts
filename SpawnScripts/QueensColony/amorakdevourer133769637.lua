--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer133769637.lua
	Script Purpose	:	Waypoint Path for amorakdevourer133769637.lua
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
	MovementLoopAddLocation(NPC, 212.06, -0.75, -154.64, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 193.71, -0.68, -161.16, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 183.97, -0.64, -170.11, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 167.42, -0.58, -179.61, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 196.58, -0.69, -158.57, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 199.4, -0.7, -145.59, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 198, -0.7, -139.07, 2, math.random(14, 25))
end