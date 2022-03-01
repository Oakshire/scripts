--[[
        Script Name     :       SpawnScripts/QueensColony/aMorakmangler133770145.lua
	Script Purpose	:	Waypoint Path for aMorakmangler133770145.lua
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
	MovementLoopAddLocation(NPC, -20.32, 2.18, -144.6, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -30.36, 2.43, -143.46, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -26.21, 2.11, -149.64, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -32.18, 2.42, -148.22, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -20.82, 2.18, -145.17, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -28.92, 2.27, -141.49, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -32.55, 2.15, -138.95, 2, 0)
	MovementLoopAddLocation(NPC, -36.22, 2.12, -135.61, 2, math.random(14, 25))
	MovementLoopAddLocation(NPC, -25.71, 2.16, -143.09, 2, 0)
end

