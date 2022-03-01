--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429795.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429795.lua
	Script Author	:	Rylec
	Script Date	:	07-28-2020 10:33:33 
	Script Notes	:	Locations collected from Live
--]]

function spawn(NPC)
	waypoints(NPC)
end

function hailed(NPC, Spawn)
	FaceTarget(NPC, Spawn)
end

function respawn(NPC)
        spawn(NPC)
end

function waypoints(NPC)
	MovementLoopAddLocation(NPC, -84.81, 1.68, -213.27, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -74.04, 2.32, -193.77, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -75.22, 2.12, -181.76, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -70.79, 2.3, -184.83, 2, 0)
	MovementLoopAddLocation(NPC, -61.28, 2.17, -187.95, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -60.82, 2.25, -183.81, 2, 0)
	MovementLoopAddLocation(NPC, -62.53, 2.27, -179.99, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -68.76, 2.17, -181.47, 2, 0)
	MovementLoopAddLocation(NPC, -89.05, 1.68, -196.94, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -70.39, 2.12, -182.25, 2, 0)
	MovementLoopAddLocation(NPC, -61.62, 2.27, -178.52, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -64.15, 2.28, -183.03, 2, 0)
	MovementLoopAddLocation(NPC, -67.89, 2.35, -190.92, 2, 0)
	MovementLoopAddLocation(NPC, -76.37, 2.33, -202.11, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -74.81, 2.32, -192.78, 2, 0)
	MovementLoopAddLocation(NPC, -75.78, 2.09, -175.89, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -71.79, 2.31, -200.1, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -89.46, 1.69, -205.55, 2, math.random(14, 25))
end

