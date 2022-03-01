--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429709.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429709.lua
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
	MovementLoopAddLocation(NPC, 5.84, 2.57, -181.59, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 4.73, 2.03, -186.39, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 6.13, 2.02, -193.86, 2, 0)
	MovementLoopAddLocation(NPC, 4.75, 1.85, -207.97, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 9.39, 1.89, -211.09, 2, 0)
	MovementLoopAddLocation(NPC, 15.36, 1.83, -218.02, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 12.35, 1.82, -217.97, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, 3.58, 2.33, -185.04, 2, math.random(14, 25))
end

