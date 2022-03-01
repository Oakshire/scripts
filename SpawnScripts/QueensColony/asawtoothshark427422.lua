--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427422.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427422.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 02:40:59 
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
	MovementLoopAddLocation(NPC, 24.98, -11.82, -26.51, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 20.28, -11.85, -29.76, 2, 0)
	MovementLoopAddLocation(NPC, 12.38, -11.86, -33.63, 2, 0)
	MovementLoopAddLocation(NPC, -9.73, -11.83, -41.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 5.52, -11.73, -35.66, 2, 0)
	MovementLoopAddLocation(NPC, 11.58, -11.93, -34.96, 2, 0)
	MovementLoopAddLocation(NPC, 20.81, -13.65, -35.81, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.68, -13.73, -26.74, 2, 0)
	MovementLoopAddLocation(NPC, 33.86, -14.06, -18.87, 2, 0)
	MovementLoopAddLocation(NPC, 38.62, -14.65, -16.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.61, -13.72, -20.48, 2, 0)
	MovementLoopAddLocation(NPC, 27.62, -13.68, -21.71, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.23, -12.85, -5.69, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 46.84, -12.77, -11.31, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 37.27, -12.92, 0.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.79, -11.78, -27.24, 2, math.random(10, 20))
end


