--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427409.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427409.lua
	Script Author	:	Rylec
	Script Date	:	02-10-2020 12:29:16 
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
	MovementLoopAddLocation(NPC, -5.21, -11.85, -86.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -1.86, -11.28, -81.38, 2, 0)
	MovementLoopAddLocation(NPC, -0.06, -11.34, -76.18, 2, 0)
	MovementLoopAddLocation(NPC, 4.95, -12.19, -64.09, 2, 0)
	MovementLoopAddLocation(NPC, 7.02, -12.64, -62.04, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.3, -12.16, -67.66, 2, 0)
	MovementLoopAddLocation(NPC, 0.36, -11.74, -81.63, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.54, -11.78, -81.29, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 9.78, -11.77, -73.37, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.94, -11.96, -74.92, 2, 0)
	MovementLoopAddLocation(NPC, 3.54, -11.83, -78.36, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 3.08, -12.28, -70.44, 2, 0)
	MovementLoopAddLocation(NPC, 3.73, -12.78, -62.62, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 2.3, -12.18, -69.53, 2, 0)
	MovementLoopAddLocation(NPC, -0.2, -12.16, -78.23, 2, 0)
end


