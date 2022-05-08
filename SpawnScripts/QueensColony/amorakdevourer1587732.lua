--[[
        Script Name     :       SpawnScripts/QueensColony/amorakdevourer1587732.lua
	Script Purpose	:	Waypoint Path for amorakdevourer1587732.lua
	Script Author	:	Rylec
	Script Date	:	06-01-2020 10:10:43 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
        SpawnSet(NPC, "level", "3")
        SpawnSet(NPC, "hp", 75)
            SpawnSet(NPC, "power", 45)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 213.97, -1.24, -66.96, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 212.98, -0.77, -77.64, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 213.05, -0.97, -71.42, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 225.09, -0.76, -57.78, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 214.14, -0.77, -79.18, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 199.15, -0.71, -87.46, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 213.81, -1.27, -68.79, 2, 0)
	MovementLoopAddLocation(NPC, 219.99, -0.99, -59.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 219.26, -2.65, -46.42, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 216.42, -0.65, -54.07, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 220.15, -2.3, -46.67, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 219.37, -0.86, -50.74, 2, 0)
	MovementLoopAddLocation(NPC, 215.83, -1.28, -61.4, 2, math.random(14, 25))
end


