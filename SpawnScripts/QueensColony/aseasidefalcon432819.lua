--[[
        Script Name     :       SpawnScripts/QueensColony/aseasidefalcon432819.lua
	Script Purpose	:	Waypoint Path for aseasidefalcon432819.lua
	Script Author	:	Rylec
	Script Date	:	04-19-2020 02:19:02 
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
	MovementLoopAddLocation(NPC, 148.24, 0.98, 198.97, 2, math.random(10, 24))
--[[	MovementLoopAddLocation(NPC, 160.36, 1.18, 192.08, 2, 0)
	MovementLoopAddLocation(NPC, 178.05, 1.34, 190.82, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 178.28, 0.99, 183.42, 2, 0)
	MovementLoopAddLocation(NPC, 180.5, 0.81, 176.78, 2, 0)
	MovementLoopAddLocation(NPC, 181.56, 0.45, 168.26, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 180.15, 0.08, 177.92, 2, 0)
	MovementLoopAddLocation(NPC, 167.8, -0.52, 203.48, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 170.09, -0.12, 199.89, 2, 0)
	MovementLoopAddLocation(NPC, 168.01, 1.05, 184.13, 2, 0)
	MovementLoopAddLocation(NPC, 164.34, 1.29, 173.2, 2, 0)
	MovementLoopAddLocation(NPC, 156.06, 2.09, 145.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.57, 2.02, 135.91, 2, 0)
	MovementLoopAddLocation(NPC, 151.99, 1.99, 132.65, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 153.86, 1.79, 137.78, 2, 0)
	MovementLoopAddLocation(NPC, 160.4, 1.41, 150.9, 2, 0)
	MovementLoopAddLocation(NPC, 174.29, 1.11, 165.08, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 176.42, 0.62, 185.33, 2, 0)
	MovementLoopAddLocation(NPC, 179.5, 0.48, 193.25, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.86, -0.79, 158.26, 2, math.random(10, 24))
--]]	MovementLoopAddLocation(NPC, 155.77, 1.07, 193.86, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 163.97, 1.05, 180.68, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 165.43, 0.41, 185.32, 2, math.random(10, 24))
	MovementLoopAddLocation(NPC, 157.52, 0.69, 192.43, 2, 0)
end

