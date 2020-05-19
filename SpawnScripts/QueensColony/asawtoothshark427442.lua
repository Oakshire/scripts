--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427442.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427442.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:21:08 
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
	MovementLoopAddLocation(NPC, 39.02, -12.22, 15.53, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 32.33, -12.56, 24.33, 2, 0)
	MovementLoopAddLocation(NPC, 17.22, -13.22, 46.3, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 4.65, -13.42, 38.4, 2, 0)
	MovementLoopAddLocation(NPC, -21.73, -13.19, 29.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -9.31, -12.3, 38.68, 2, 0)
	MovementLoopAddLocation(NPC, -0.22, -12.69, 51.6, 2, 0)
	MovementLoopAddLocation(NPC, 8.43, -12.64, 62.03, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.88, -12.26, 55.13, 2, 0)
	MovementLoopAddLocation(NPC, -5.4, -13.11, 41.78, 2, 0)
	MovementLoopAddLocation(NPC, -10.04, -13.79, 38.02, 2, 0)
	MovementLoopAddLocation(NPC, -15.35, -13.89, 36.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -0.92, -13.37, 35.65, 2, 0)
	MovementLoopAddLocation(NPC, 28.63, -12.52, 18.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.02, -12.78, 18.94, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 34.13, -12.64, 19.06, 2, 0)
	MovementLoopAddLocation(NPC, 75.79, -11.15, 25.13, 2, 0)
	MovementLoopAddLocation(NPC, 87.34, -10.94, 27.48, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 75.85, -12.04, 20.84, 2, 0)
	MovementLoopAddLocation(NPC, 59.34, -11, 18.5, 2, 0)
	MovementLoopAddLocation(NPC, 22.63, -12.18, 12.26, 2, math.random(10, 20))
end


