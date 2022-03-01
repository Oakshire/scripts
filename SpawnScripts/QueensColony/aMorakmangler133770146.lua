--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770146.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770146.lua
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
	MovementLoopAddLocation(NPC, -42.31, 2.19, -141.48, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -30.35, 2.44, -145.23, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -35.34, 2.16, -138.53, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -36.27, 1.97, -131.39, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -26.3, 2.13, -132.37, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -20.41, 3.31, -137.62, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -21.93, 2.15, -145.37, 2, 0)
	MovementLoopAddLocation(NPC, -30.9, 1.96, -155.22, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -21, 2.15, -144.56, 2, 0)
	MovementLoopAddLocation(NPC, -10.46, 2.16, -134.8, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -11.47, 2.07, -130.45, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -29.43, 2.14, -133.44, 2, math.random(14, 25))
end

