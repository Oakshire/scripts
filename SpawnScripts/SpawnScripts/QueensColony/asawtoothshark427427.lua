--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427427.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427427.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:42:52 
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
	MovementLoopAddLocation(NPC, 64.66, -11.77, -15.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 52.71, -12.05, -23.24, 2, 0)
	MovementLoopAddLocation(NPC, 46.53, -11.58, -30.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.22, -12.45, -28.55, 2, 0)
	MovementLoopAddLocation(NPC, 37.82, -13.61, -27.82, 2, 0)
	MovementLoopAddLocation(NPC, 33.72, -14.05, -28.49, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 29.88, -15.23, -25.02, 2, 0)
	MovementLoopAddLocation(NPC, 25.76, -15.36, -21.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.42, -13.59, -19.75, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.08, -13.74, -0.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 41.41, -13.45, 0.49, 2, math.random(10, 20))
end


