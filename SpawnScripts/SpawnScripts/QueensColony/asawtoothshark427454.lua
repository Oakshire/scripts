--[[
        Script Name     :       SpawnScripts/QueensColony/asawtoothshark427454.lua
	Script Purpose	:	Waypoint Path for asawtoothshark427454.lua
	Script Author	:	Rylec
	Script Date	:	12-31-2019 08:54:04 
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
	MovementLoopAddLocation(NPC, -15.51, -11.68, -25.16, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.71, -11.38, -34.55, 2, 0)
	MovementLoopAddLocation(NPC, -16.67, -11.15, -40.45, 2, 0)
	MovementLoopAddLocation(NPC, -15.55, -10.7, -57.46, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -16.82, -10.7, -46.1, 2, 0)
	MovementLoopAddLocation(NPC, -13.39, -11.84, -2.25, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -17.58, -12.18, -0.27, 2, 0)
	MovementLoopAddLocation(NPC, -35.11, -12.05, 16.76, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -35.69, -10.76, 9.24, 2, 0)
	MovementLoopAddLocation(NPC, -34.81, -10.7, -12, 2, 0)
	MovementLoopAddLocation(NPC, -35.17, -11.13, -22.05, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -31.84, -12.07, -27.1, 2, 0)
	MovementLoopAddLocation(NPC, -25.47, -11.36, -43.96, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -25.06, -11.89, -28.22, 2, 0)
	MovementLoopAddLocation(NPC, -26.89, -10.7, -3.23, 2, 0)
	MovementLoopAddLocation(NPC, -30.3, -11.56, 10.67, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -27.82, -11.63, 17.07, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -32.69, -10.7, -3.52, 2, 0)
	MovementLoopAddLocation(NPC, -32.28, -10.7, -15.56, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -15.36, -11.56, -24.87, 2, math.random(10, 20))
	MovementLoopAddLocation(NPC, -2.11, -11.48, -22.03, 2, math.random(10, 20))
end


