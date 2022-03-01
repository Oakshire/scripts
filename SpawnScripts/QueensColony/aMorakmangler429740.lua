--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429740.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429740.lua
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
	MovementLoopAddLocation(NPC, 21.69, 1.79, -226.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 14.87, 1.81, -222.49, 2, 0)
	MovementLoopAddLocation(NPC, 7.7, 1.84, -214.83, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 2.75, 1.85, -199.48, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -1.78, 1.87, -192.58, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 9.21, 1.83, -216.75, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 3.55, 1.85, -202.24, 2, 0)
	MovementLoopAddLocation(NPC, 0.58, 2.6, -183.15, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 1.43, 1.86, -195.52, 2, 0)
	MovementLoopAddLocation(NPC, 14.29, 1.89, -216.81, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 11.12, 1.82, -214.96, 2, 0)
	MovementLoopAddLocation(NPC, 4.03, 1.85, -209.42, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 6.94, 1.84, -213.73, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 12.99, 1.88, -215.68, 2, 0)
	MovementLoopAddLocation(NPC, 20.15, 1.79, -223.26, 2, 0)
end

