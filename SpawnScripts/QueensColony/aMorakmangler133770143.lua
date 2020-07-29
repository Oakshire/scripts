--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770143.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770143.lua
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
	MovementLoopAddLocation(NPC, -9.99, 2.07, -131.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -16.49, 2.09, -134.03, 2, 0)
	MovementLoopAddLocation(NPC, -28.06, 2.27, -141.45, 2, 0)
	MovementLoopAddLocation(NPC, -35.98, 2.17, -141.6, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -26.93, 2.08, -151.65, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -32.23, 2.15, -133.18, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -39.56, 2.01, -137.61, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -14.45, 1.89, -127.28, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -13.31, 2.08, -135.14, 2, math.random(14, 25))
end

