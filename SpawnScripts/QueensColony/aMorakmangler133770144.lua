--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770144.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770144.lua
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
	MovementLoopAddLocation(NPC, -27.59, 2.19, -140.46, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -22.04, 2.11, -143.94, 2, 0)
	MovementLoopAddLocation(NPC, -19.49, 2.22, -144.71, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -28.06, 2.34, -143.41, 2, 0)
	MovementLoopAddLocation(NPC, -37.26, 2.17, -138.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -24.28, 2.12, -146.48, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -21.33, 3.38, -136.94, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -19.72, 2.21, -144.92, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -24.11, 2.12, -143.75, 2, 0)
	MovementLoopAddLocation(NPC, -29.58, 2.14, -137.1, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -27.21, 2.13, -132.82, 2, 0)
	MovementLoopAddLocation(NPC, -18.74, 2.1, -131.73, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -32.08, 2.15, -154.42, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -34.35, 1.96, -127.3, 2, math.random(14, 25))
end

