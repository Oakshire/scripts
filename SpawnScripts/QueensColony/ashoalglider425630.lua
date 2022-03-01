--[[
        Script Name     :       SpawnScripts/QueensColony/ashoalglider425630.lua
	Script Purpose	:	Waypoint Path for ashoalglider425630.lua
	Script Author	:	Rylec
	Script Date	:	10-22-2019 09:53:20 
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
	MovementLoopAddLocation(NPC, 9.74, -14.29, 275.1, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 12.07, -13.6, 273.79, 2, 0)
	MovementLoopAddLocation(NPC, 20.43, -10.71, 254.39, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 13.98, -11.81, 256.82, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.27, -11.22, 267.12, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 6.65, -13.78, 272.34, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 10.71, -12.88, 268.92, 2, 0)
	MovementLoopAddLocation(NPC, 12.33, -12.15, 260.97, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 14, -13.26, 262.24, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 16.21, -11.31, 274.78, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 24.77, -12.34, 259.57, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, 17.97, -14.22, 273.69, 2, math.random(10, 20))
end

