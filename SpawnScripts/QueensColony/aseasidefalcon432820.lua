--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432820.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432820.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:05 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, 144.44, 0.49, 176.57, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.5, 0.22, 168.79, 2, 0)
	MovementLoopAddLocation(NPC, 152.89, -0.14, 161.45, 2, 0)
	MovementLoopAddLocation(NPC, 151.76, -0.35, 142.24, 2, 0)
	MovementLoopAddLocation(NPC, 151.89, -0.44, 140.14, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 166.02, -0.55, 139.87, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 177.25, -0.99, 149.71, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 181.9, -0.32, 156.05, 2, 0)
	MovementLoopAddLocation(NPC, 191.09, -0.32, 164.26, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 181.54, 1.23, 164.34, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 165.75, 0.86, 168.1, 2, 0)
	MovementLoopAddLocation(NPC, 157.97, 0.52, 174.62, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 151.41, 0.5, 176.07, 2, 0)
end


