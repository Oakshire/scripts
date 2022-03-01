--[[
        Script Name     :       SpawnScripts/QueensColony/arazortoothshark428504.lua
	Script Purpose	:	Waypoint Path for arazortoothshark428504.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:34:45 
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
	MovementLoopAddLocation(NPC, 7.27, -11.74, -24.8, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.05, -12.07, -52.3, 2, 0)
	MovementLoopAddLocation(NPC, 3.14, -13.94, -57.31, 2, 0)
	MovementLoopAddLocation(NPC, 1.4, -13.92, -62.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.07, -12.11, -52.91, 2, 0)
	MovementLoopAddLocation(NPC, 14.18, -12.28, -41.81, 2, 0)
	MovementLoopAddLocation(NPC, 20.32, -12.95, -28.84, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.28, -13.27, -22.63, 2, 0)
	MovementLoopAddLocation(NPC, 23.16, -13.24, -17.42, 2, 0)
	MovementLoopAddLocation(NPC, 25.91, -14.43, -6.98, 2, 0)
	MovementLoopAddLocation(NPC, 26.17, -14.46, -4.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 33.29, -13.46, -5.19, 2, 0)
	MovementLoopAddLocation(NPC, 39.57, -13.06, -4.25, 2, 0)
	MovementLoopAddLocation(NPC, 51.25, -13.91, -3.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.43, -11.81, -13.93, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.21, -14, -21.8, 2, 0)
	MovementLoopAddLocation(NPC, 22.48, -13.98, -28.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 19.17, -12.87, -26.08, 2, 0)
	MovementLoopAddLocation(NPC, 14.41, -11.88, -24.84, 2, 0)
end


