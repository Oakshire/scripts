--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427449.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427449.lua
	Script Author	:	Rylec
	Script Date	:	03-21-2020 11:48:10 
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
	MovementLoopAddLocation(NPC, 21.18, -12.82, 15.47, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 22.11, -13.03, 23.71, 2, 0)
	MovementLoopAddLocation(NPC, 18.18, -13.2, 38.77, 2, 0)
	MovementLoopAddLocation(NPC, 14.54, -12.82, 44.55, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 21.85, -12.16, 28.23, 2, 0)
	MovementLoopAddLocation(NPC, 31.03, -12.62, 15.89, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.88, -13.18, 22.74, 2, 0)
	MovementLoopAddLocation(NPC, 20.13, -13.49, 26.77, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 27.44, -12.19, 19.81, 2, 0)
	MovementLoopAddLocation(NPC, 36.32, -12.54, 14.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 26.42, -12.31, 17.65, 2, 0)
	MovementLoopAddLocation(NPC, 17.07, -12.2, 38.5, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 25.13, -12.09, 35.92, 2, 0)
	MovementLoopAddLocation(NPC, 45.55, -11.65, 25.48, 2, 0)
	MovementLoopAddLocation(NPC, 51.32, -11.73, 23.66, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 50.74, -10.76, 26.64, 2, 0)
	MovementLoopAddLocation(NPC, 49.76, -11.22, 32.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 42.03, -11.54, 30.4, 2, 0)
	MovementLoopAddLocation(NPC, 32.19, -12.24, 29.41, 2, 0)
	MovementLoopAddLocation(NPC, 1.57, -12.3, 30.87, 2, 0)
	MovementLoopAddLocation(NPC, -13.21, -11.73, 28.02, 2, math.random(10, 20))
end

