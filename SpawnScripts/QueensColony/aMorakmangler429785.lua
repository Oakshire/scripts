--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler429785.lua
	Script Purpose	:	Waypoint Path for aMorakmangler429785.lua
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
	MovementLoopAddLocation(NPC, -69.39, 2.14, -181.72, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -80.84, 1.85, -192.71, 2, 0)
	MovementLoopAddLocation(NPC, -88.94, 1.68, -198.25, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -84.72, 2.06, -192.74, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -69.4, 2.3, -186.29, 2, 0)
	MovementLoopAddLocation(NPC, -57.48, 2.25, -174.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -57.13, 2.25, -182.28, 2, 0)
	MovementLoopAddLocation(NPC, -68.93, 2.46, -194.86, 2, 0)
	MovementLoopAddLocation(NPC, -72.55, 2.31, -200.69, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -89.35, 1.69, -206.26, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -84.66, 1.68, -213.45, 2, math.random(14, 25))
end

